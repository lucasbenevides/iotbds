 `mysql -h 172.16.20.253 -u lucasbenevides -D lucasbenevides_diamond --password=ctILDawFM7QXxUYT1oKxKZ6uQektqz -e "select * from vw_somaMetricasCassandra  WHERE metric like 'Table.CompactionBytesWritten.lucasdb.tw_ttl_2h_110min' and timestamp BETWEEN 1508509592 and 1508534592;" -B >tw_110_rt1.csv`

 `mysql -h 172.16.20.253 -u lucasbenevides -D lucasbenevides_diamond --password=ctILDawFM7QXxUYT1oKxKZ6uQektqz -e "select * from vw_somaMetricasCassandra WHERE metric like 'Table.CompactionBytesWritten.lucasdb.tw_ttl_2h_120min' and timestamp BETWEEN 1508534657
 and 1508559657" -B >tw_120_rt1.csv`

  `mysql -h 172.16.20.253 -u lucasbenevides -D lucasbenevides_diamond --password=ctILDawFM7QXxUYT1oKxKZ6uQektqz -e "select * from vw_somaMetricasCassandra WHERE metric like 'Table.CompactionBytesWritten.lucasdb.tw_ttl_2h_130min' and timestamp BETWEEN 1508559741 and 1508584741" -B >tw_130_rt1.csv`
  
  #agora o espaço em disco
  
 `mysql -h 172.16.20.253 -u lucasbenevides -D lucasbenevides_diamond --password=ctILDawFM7QXxUYT1oKxKZ6uQektqz -e "select * from vw_MetricasCassandra WHERE metric like 'Table.TotalDiskSpaceUsed.lucasdb.tw_ttl_2h_110min' and timestamp BETWEEN 1508509592 and 1508534592;" -B >tw_TdiskUsed_110_rt1.csv`

 `mysql -h 172.16.20.253 -u lucasbenevides -D lucasbenevides_diamond --password=ctILDawFM7QXxUYT1oKxKZ6uQektqz -e "select * from vw_MetricasCassandra WHERE metric like 'Table.TotalDiskSpaceUsed.lucasdb.tw_ttl_2h_120min' and timestamp BETWEEN 1508534657
 and 1508559657" -B >tw_TdiskUsed_120_rt1.csv`

  `mysql -h 172.16.20.253 -u lucasbenevides -D lucasbenevides_diamond --password=ctILDawFM7QXxUYT1oKxKZ6uQektqz -e "select * from vw_MetricasCassandra WHERE metric like 'Table.TotalDiskSpaceUsed.lucasdb.tw_ttl_2h_130min' and timestamp BETWEEN 1508559741 and 1508584741" -B >tw_TdiskUsed_130_rt1.csv`