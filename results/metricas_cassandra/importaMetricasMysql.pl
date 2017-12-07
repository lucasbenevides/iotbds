#!/usr/bin/perl
#Script criado por Lucas para importar os dados dos arquivos CSV para p Mysql
use DBI;
use warnings;
use Data::Dumper qw(Dumper);
use Sys::Hostname;
use v5.10;
use Time::Piece;

my $dir = '.';
opendir(DIR, $dir) or die $!;
$server = hostname;
my $tableName = '_iotbds_cassandra_metricas';

while (my $subDir = readdir(DIR)) {
        # A file test to check that it is a directory
	# Use -f to test for a file
 	next unless ($subDir =~ m/metrics/);
        next unless (-d "$dir/$subDir");
	
	$myConnection = DBI->connect("DBI:mysql:lucasbenevides_diamond:172.16.20.253","lucasbenevides","ctILDawFM7QXxUYT1oKxKZ6uQektqz") or die ("Erro ao conectar ao database: $DBI::errstr\n");

	opendir(SUBDIR, $subDir) or die $!;
	print "\nAbrindo diretório $subDir\n";
	my @arquivos = sort { $a cmp $b } readdir(SUBDIR);
	while (my $arquivo = shift @arquivos){ #essa linha copiei de https://stackoverflow.com/questions/16793043/perl-readdir-in-order
		next if ($arquivo =~ m/^\./); 		
		if ($arquivo =~ m/_importado/){
			print "O diretorio $subDir já foi importado. Passando para o proximo.\n";
			last;
		}
		die "Arquivo não CSV encontrado $subDir/$arquivo.\n" if ($arquivo !~m /.csv/);
		open (ARQ, "<$subDir/$arquivo") or die "Erro: Não foi possivel abrir o arquivo $subDir/$arquivo.\n$!"; 
		my $linha = <ARQ>;
		chomp $linha;
		my $sql;
		my $timestamp;
		my $metrica="";
		if ($arquivo =~m/^org\.apache\.cassandra\.metrics\./){
			($metrica) = $arquivo =~/org\.apache\.cassandra\.metrics\.(.+)\.csv/; 
		} elsif ($arquivo =~m/^jvm\./) {
			($metrica) = $arquivo =~/jvm\.(.+)\.csv/;
		}
		say "\tImportando o arquivo $arquivo.";
		my $numLinha;
		my @campos = split (/,/, $linha);
		while ($linha = <ARQ>){
			my %hashCampos;
			$numLinha++;
			chomp $linha;
			if (substr($linha, 0, 1) eq chr(0)) {
				say "\tCaracteres null no arquivo $subDir/$arquivo, na linha $numLinha.";
				next;
			}
			@hashCampos{@campos} = split (/,/, $linha);
			$timestamp = $hashCampos{'t'};
			foreach $campo (keys %hashCampos){
				next if $campo eq "t"; #já foi tratado
				if ($hashCampos{$campo} =~ m/^[0-9]*\.?[0-9]+/){ #eh Float
					$sql = "INSERT INTO ". $server . $tableName."(timestamp, metric, type, value, value_f) VALUES (?, ?, ?, ?, ?)";
					$stmt = $myConnection->prepare($sql);
					$stmt->execute($timestamp, $metrica, $campo, $hashCampos{$campo}, $hashCampos{$campo}) or die "Erro ao inserir registro com valor Float - $campo -> $hashCampos{$campo}\n";
				}
				else {
					$sql = "INSERT INTO ". $server . $tableName."(timestamp, metric, type, value) VALUES (?, ?, ?, ?)";
					$stmt = $myConnection->prepare($sql);
					$stmt->execute($timestamp, $metrica, $campo, $hashCampos{$campo}) or die "Problema ao inserir registro sem Float";
				}
			}
		}
		close ARQ;
	}
	$date = localtime->strftime('%Y%m%d_%H%M%S');
	open (IMPORT, ">$subDir/_importado_$date");
	say IMPORT "Arquivos deste diretório importados em " . localtime->strftime("%a %b %e %H:%M:%S %Y");
	close (IMPORT);
	closedir(SUBDIR);
}

$myConnection->disconnect();
closedir (DIR);

