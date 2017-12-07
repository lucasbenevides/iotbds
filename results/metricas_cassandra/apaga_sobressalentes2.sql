 delete from rt3_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_120min' and timestamp > 1508561499;
 delete from rt5_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_120min' and timestamp > 1508561499;
 delete from rt7_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_120min' and timestamp > 1508561499;
 delete from rt9_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_120min' and timestamp > 1508561499;
 
 delete from rt3_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_130min' and timestamp > 1508586099;
 delete from rt5_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_130min' and timestamp > 1508586099;
 delete from rt7_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_130min' and timestamp > 1508586099;
 delete from rt9_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_130min' and timestamp > 1508586099;
 
 delete from rt3_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_150min' and timestamp > 1508120199;
 delete from rt5_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_150min' and timestamp > 1508120199;
 delete from rt7_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_150min' and timestamp > 1508120199;
 delete from rt9_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_150min' and timestamp > 1508120199;

delete from rt3_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_160min' and timestamp > 1508145399;
delete from rt5_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_160min' and timestamp > 1508145399;
delete from rt7_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_160min' and timestamp > 1508145399;
delete from rt9_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_160min' and timestamp > 1508145399;
 
delete from rt3_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_170min' and timestamp > 1508196399;
delete from rt5_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_170min' and timestamp > 1508196399;
delete from rt7_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_170min' and timestamp > 1508196399;
delete from rt9_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_170min' and timestamp > 1508196399;

delete from rt3_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_180min' and timestamp > 1508221599;
delete from rt5_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_180min' and timestamp > 1508221599;
delete from rt7_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_180min' and timestamp > 1508221599;
delete from rt9_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_180min' and timestamp > 1508221599;

delete from rt3_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_nocompact' and timestamp > 1508739099;
delete from rt5_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_nocompact' and timestamp > 1508739099;
delete from rt7_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_nocompact' and timestamp > 1508739099;
delete from rt9_cassandra_metricas WHERE metric like 'Table.%.lucasdb.tw_ttl_2h_nocompact' and timestamp > 1508739099;

OPTIMIZE TABLE rt3_cassandra_metricas;
OPTIMIZE TABLE rt5_cassandra_metricas;
OPTIMIZE TABLE rt7_cassandra_metricas;
OPTIMIZE TABLE rt9_cassandra_metricas;
