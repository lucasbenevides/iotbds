ALTER TABLE rt1_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt2_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt2_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt3_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt3_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt4_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt4_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt5_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt5_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt6_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt6_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt7_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt7_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt8_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt8_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt9_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt9_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;
ALTER TABLE rt10_cassandra_metricas DROP COLUMN ts_join;
ALTER TABLE rt10_cassandra_metricas ADD COLUMN ts_join CHAR(8) AS (TRUNCATE((timestamp/30),0)) STORED AFTER timestamp;

ALTER VIEW vw_MetricasCassandra
AS
SELECT rt1.metric, rt1.timestamp, rt1.ts_join, rt1.type, rt1.value AS rt1_value, rt2.value AS rt2_value, rt3.value AS rt3_value , rt4.value AS rt4_value, rt5.value AS rt5_value, rt6.value AS rt6_value, rt7.value as rt7_value, rt8.value AS rt8_value, rt9.value AS rt9_value, rt10.value as rt10_value
FROM rt1_cassandra_metricas rt1 
	INNER JOIN rt2_cassandra_metricas rt2 ON rt1.ts_join = rt2.ts_join and rt1.metric = rt2.metric and rt1.type = rt2.type
	INNER JOIN rt3_cassandra_metricas rt3 ON rt1.ts_join = rt3.ts_join and rt1.metric = rt3.metric and rt1.type = rt3.type
	INNER JOIN rt4_cassandra_metricas rt4 ON rt1.ts_join = rt4.ts_join and rt1.metric = rt4.metric and rt1.type = rt4.type
	INNER JOIN rt5_cassandra_metricas rt5 ON rt1.ts_join = rt5.ts_join and rt1.metric = rt5.metric and rt1.type = rt5.type
	INNER JOIN rt6_cassandra_metricas rt6 ON rt1.ts_join = rt6.ts_join and rt1.metric = rt6.metric and rt1.type = rt6.type
	INNER JOIN rt7_cassandra_metricas rt7 ON rt1.ts_join = rt7.ts_join and rt1.metric = rt7.metric and rt1.type = rt7.type
	INNER JOIN rt8_cassandra_metricas rt8 ON rt1.ts_join = rt8.ts_join and rt1.metric = rt8.metric and rt1.type = rt8.type
	INNER JOIN rt9_cassandra_metricas rt9 ON rt1.ts_join = rt9.ts_join and rt1.metric = rt9.metric and rt1.type = rt9.type
	INNER JOIN rt10_cassandra_metricas rt10 ON rt1.ts_join = rt10.ts_join and rt1.metric = rt10.metric and rt1.type = rt10.type



CREATE VIEW vw_new_MetricasCassandra
AS
SELECT rt1.metric, rt1.timestamp, rt1.ts_join, rt1.type, rt1.value AS rt1_value, rt2.value AS rt2_value, rt3.value AS rt3_value , rt4.value AS rt4_value, rt5.value AS rt5_value, rt6.value AS rt6_value, rt7.value as rt7_value, rt8.value AS rt8_value, rt9.value AS rt9_value, rt10.value as rt10_value
FROM rt1_new_cassandra_metricas rt1 
	INNER JOIN rt2_new_cassandra_metricas rt2 ON rt1.ts_join = rt2.ts_join and rt1.metric = rt2.metric and rt1.type = rt2.type
	INNER JOIN rt3_new_cassandra_metricas rt3 ON rt1.ts_join = rt3.ts_join and rt1.metric = rt3.metric and rt1.type = rt3.type
	INNER JOIN rt4_new_cassandra_metricas rt4 ON rt1.ts_join = rt4.ts_join and rt1.metric = rt4.metric and rt1.type = rt4.type
	INNER JOIN rt5_new_cassandra_metricas rt5 ON rt1.ts_join = rt5.ts_join and rt1.metric = rt5.metric and rt1.type = rt5.type
	INNER JOIN rt6_new_cassandra_metricas rt6 ON rt1.ts_join = rt6.ts_join and rt1.metric = rt6.metric and rt1.type = rt6.type
	INNER JOIN rt7_new_cassandra_metricas rt7 ON rt1.ts_join = rt7.ts_join and rt1.metric = rt7.metric and rt1.type = rt7.type
	INNER JOIN rt8_new_cassandra_metricas rt8 ON rt1.ts_join = rt8.ts_join and rt1.metric = rt8.metric and rt1.type = rt8.type
	INNER JOIN rt9_new_cassandra_metricas rt9 ON rt1.ts_join = rt9.ts_join and rt1.metric = rt9.metric and rt1.type = rt9.type
	INNER JOIN rt10_new_cassandra_metricas rt10 ON rt1.ts_join = rt10.ts_join and rt1.metric = rt10.metric and rt1.type = rt10.type

CREATE VIEW vw_iotbds_MetricasCassandra
AS
SELECT rt1.metric, rt1.timestamp, rt1.ts_join, rt1.type, rt1.value AS rt1_value, rt2.value AS rt2_value, rt3.value AS rt3_value , rt4.value AS rt4_value, rt5.value AS rt5_value, rt6.value AS rt6_value, rt7.value as rt7_value, rt8.value AS rt8_value, rt9.value AS rt9_value, rt10.value as rt10_value
FROM rt1_iotbds_cassandra_metricas rt1 
	INNER JOIN rt2_iotbds_cassandra_metricas rt2 ON rt1.ts_join = rt2.ts_join and rt1.metric = rt2.metric and rt1.type = rt2.type
	INNER JOIN rt3_iotbds_cassandra_metricas rt3 ON rt1.ts_join = rt3.ts_join and rt1.metric = rt3.metric and rt1.type = rt3.type
	INNER JOIN rt4_iotbds_cassandra_metricas rt4 ON rt1.ts_join = rt4.ts_join and rt1.metric = rt4.metric and rt1.type = rt4.type
	INNER JOIN rt5_iotbds_cassandra_metricas rt5 ON rt1.ts_join = rt5.ts_join and rt1.metric = rt5.metric and rt1.type = rt5.type
	INNER JOIN rt6_iotbds_cassandra_metricas rt6 ON rt1.ts_join = rt6.ts_join and rt1.metric = rt6.metric and rt1.type = rt6.type
	INNER JOIN rt7_iotbds_cassandra_metricas rt7 ON rt1.ts_join = rt7.ts_join and rt1.metric = rt7.metric and rt1.type = rt7.type
	INNER JOIN rt8_iotbds_cassandra_metricas rt8 ON rt1.ts_join = rt8.ts_join and rt1.metric = rt8.metric and rt1.type = rt8.type
	INNER JOIN rt9_iotbds_cassandra_metricas rt9 ON rt1.ts_join = rt9.ts_join and rt1.metric = rt9.metric and rt1.type = rt9.type
	INNER JOIN rt10_iotbds_cassandra_metricas rt10 ON rt1.ts_join = rt10.ts_join and rt1.metric = rt10.metric and rt1.type = rt10.type

