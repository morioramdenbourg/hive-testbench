create database if not exists ${hiveconf:DB};
use ${hiveconf:DB};

drop table if exists part;

create table part
stored as ${hiveconf:FILE}
as select * from ${hiveconf:SOURCE}.part
cluster by p_brand
;
