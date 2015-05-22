create database if not exists ${DB};
use ${DB};

drop table if exists household_demographics;

create table household_demographics
stored as ${FILE}
as select * from ${SOURCE}.household_demographics sort by hd_demo_sk;
