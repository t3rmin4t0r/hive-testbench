create database if not exists ${DB};
use ${DB};

drop table if exists web_page;

create table web_page (
     wp_web_page_sk            bigint,
     wp_web_page_id            string,
     wp_rec_start_date         date,
     wp_rec_end_date           date,
     wp_creation_date_sk       bigint,
     wp_access_date_sk         bigint,
     wp_autogen_flag           string,
     wp_customer_sk            bigint,
     wp_url                    string,
     wp_type                   string,
     wp_char_count             int,
     wp_link_count             int,
     wp_image_count            int,
     wp_max_ad_count           int
)
stored as ${FILE};

insert overwrite table web_page
select * from ${SOURCE}.web_page sort by wp_web_page_sk;
