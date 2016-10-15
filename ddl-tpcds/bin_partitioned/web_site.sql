create database if not exists ${DB};
use ${DB};

drop table if exists web_site;

create table web_site
(
    web_site_sk           bigint,
    web_site_id           string,
    web_rec_start_date    date,
    web_rec_end_date      date,
    web_name              string,
    web_open_date_sk      bigint,
    web_close_date_sk     bigint,
    web_class             string,
    web_manager           string,
    web_mkt_id            int,
    web_mkt_class         string,
    web_mkt_desc          string,
    web_market_manager    string,
    web_company_id        int,
    web_company_name      string,
    web_street_number     string,
    web_street_name       string,
    web_street_type       string,
    web_suite_number      string,
    web_city              string,
    web_county            string,
    web_state             string,
    web_zip               string,
    web_country           string,
    web_gmt_offset        double,
    web_tax_percentage    double
)
stored as ${FILE};

insert overwrite table web_site
select * from ${SOURCE}.web_site sort by web_site_sk;
