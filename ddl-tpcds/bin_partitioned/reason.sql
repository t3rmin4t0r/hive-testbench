create database if not exists ${DB};
use ${DB};

drop table if exists reason;

create table reason
stored as ${FILE}
as select * from ${SOURCE}.reason sort by r_reason_sk;
