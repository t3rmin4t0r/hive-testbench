create database if not exists ${DB};
use ${DB};

drop table if exists ship_mode;

create table ship_mode
stored as ${FILE}
as select * from ${SOURCE}.ship_mode sort by sm_ship_mode_sk;
