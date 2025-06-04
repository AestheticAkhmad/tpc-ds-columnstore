CREATE DATABASE IF NOT EXISTS tpcds;
USE tpcds;

CREATE TABLE dbgen_version (
    dv_version        VARCHAR(255) DEFAULT NULL,
    dv_create_date    DATE DEFAULT NULL,
    dv_create_time    VARCHAR(255) DEFAULT NULL,
    dv_cmdline_args   VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE customer_address (
    ca_address_sk        BIGINT,
    ca_address_id        VARCHAR(255) NOT NULL,
    ca_street_number     VARCHAR(255) DEFAULT NULL,
    ca_street_name       VARCHAR(255) DEFAULT NULL,
    ca_street_type       VARCHAR(255) DEFAULT NULL,
    ca_suite_number      VARCHAR(255) DEFAULT NULL,
    ca_city              VARCHAR(255) DEFAULT NULL,
    ca_county            VARCHAR(255) DEFAULT NULL,
    ca_state             VARCHAR(255) DEFAULT NULL,
    ca_zip               VARCHAR(255) DEFAULT NULL,
    ca_country           VARCHAR(255) DEFAULT NULL,
    ca_gmt_offset        FLOAT DEFAULT NULL,
    ca_location_type     VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE customer_demographics (
    cd_demo_sk           BIGINT,
    cd_gender            VARCHAR(255) DEFAULT NULL,
    cd_marital_status    VARCHAR(255) DEFAULT NULL,
    cd_education_status  VARCHAR(255) DEFAULT NULL,
    cd_purchase_estimate BIGINT DEFAULT NULL,
    cd_credit_rating     VARCHAR(255) DEFAULT NULL,
    cd_dep_count         BIGINT DEFAULT NULL,
    cd_dep_employed_count BIGINT DEFAULT NULL,
    cd_dep_college_count BIGINT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE date_dim (
    d_date_sk            BIGINT,
    d_date_id            VARCHAR(255) NOT NULL,
    d_date               DATE DEFAULT NULL,
    d_month_seq          BIGINT DEFAULT NULL,
    d_week_seq           BIGINT DEFAULT NULL,
    d_quarter_seq        BIGINT DEFAULT NULL,
    d_year               BIGINT DEFAULT NULL,
    d_dow                BIGINT DEFAULT NULL,
    d_moy                BIGINT DEFAULT NULL,
    d_dom                BIGINT DEFAULT NULL,
    d_qoy                BIGINT DEFAULT NULL,
    d_fy_year            BIGINT DEFAULT NULL,
    d_fy_quarter_seq     BIGINT DEFAULT NULL,
    d_fy_week_seq        BIGINT DEFAULT NULL,
    d_day_name           VARCHAR(255) DEFAULT NULL,
    d_quarter_name       VARCHAR(255) DEFAULT NULL,
    d_holiday            VARCHAR(255) DEFAULT NULL,
    d_weekend            VARCHAR(255) DEFAULT NULL,
    d_following_holiday  VARCHAR(255) DEFAULT NULL,
    d_first_dom          BIGINT DEFAULT NULL,
    d_last_dom           BIGINT DEFAULT NULL,
    d_same_day_ly        BIGINT DEFAULT NULL,
    d_same_day_lq        BIGINT DEFAULT NULL,
    d_current_day        VARCHAR(255) DEFAULT NULL,
    d_current_week       VARCHAR(255) DEFAULT NULL,
    d_current_month      VARCHAR(255) DEFAULT NULL,
    d_current_quarter    VARCHAR(255) DEFAULT NULL,
    d_current_year       VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE warehouse (
    w_warehouse_sk       BIGINT,
    w_warehouse_id       VARCHAR(255) NOT NULL,
    w_warehouse_name     VARCHAR(255) DEFAULT NULL,
    w_warehouse_sq_ft    BIGINT DEFAULT NULL,
    w_street_number      VARCHAR(255) DEFAULT NULL,
    w_street_name        VARCHAR(255) DEFAULT NULL,
    w_street_type        VARCHAR(255) DEFAULT NULL,
    w_suite_number       VARCHAR(255) DEFAULT NULL,
    w_city               VARCHAR(255) DEFAULT NULL,
    w_county             VARCHAR(255) DEFAULT NULL,
    w_state              VARCHAR(255) DEFAULT NULL,
    w_zip                VARCHAR(255) DEFAULT NULL,
    w_country            VARCHAR(255) DEFAULT NULL,
    w_gmt_offset         FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE ship_mode (
    sm_ship_mode_sk      BIGINT,
    sm_ship_mode_id      VARCHAR(255) NOT NULL,
    sm_type              VARCHAR(255) DEFAULT NULL,
    sm_code              VARCHAR(255) DEFAULT NULL,
    sm_carrier           VARCHAR(255) DEFAULT NULL,
    sm_contract          VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE time_dim (
    t_time_sk            BIGINT,
    t_time_id            VARCHAR(255) NOT NULL,
    t_time               BIGINT DEFAULT NULL,
    t_hour               BIGINT DEFAULT NULL,
    t_minute             BIGINT DEFAULT NULL,
    t_second             BIGINT DEFAULT NULL,
    t_am_pm              VARCHAR(255) DEFAULT NULL,
    t_shift              VARCHAR(255) DEFAULT NULL,
    t_sub_shift          VARCHAR(255) DEFAULT NULL,
    t_meal_time          VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;


CREATE TABLE reason (
    r_reason_sk    BIGINT,
    r_reason_id    VARCHAR(255) NOT NULL,
    r_reason_desc  VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE income_band (
    ib_income_band_sk  BIGINT,
    ib_lower_bound     BIGINT DEFAULT NULL,
    ib_upper_bound     BIGINT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE item (
    i_item_sk         BIGINT,
    i_item_id         VARCHAR(255) NOT NULL,
    i_rec_start_date  DATE DEFAULT NULL,
    i_rec_end_date    DATE DEFAULT NULL,
    i_item_desc       VARCHAR(255) DEFAULT NULL,
    i_current_price   FLOAT DEFAULT NULL,
    i_wholesale_cost  FLOAT DEFAULT NULL,
    i_brand_id        BIGINT DEFAULT NULL,
    i_brand           VARCHAR(255) DEFAULT NULL,
    i_class_id        BIGINT DEFAULT NULL,
    i_class           VARCHAR(255) DEFAULT NULL,
    i_category_id     BIGINT DEFAULT NULL,
    i_category        VARCHAR(255) DEFAULT NULL,
    i_manufact_id     BIGINT DEFAULT NULL,
    i_manufact        VARCHAR(255) DEFAULT NULL,
    i_size            VARCHAR(255) DEFAULT NULL,
    i_formulation     VARCHAR(255) DEFAULT NULL,
    i_color           VARCHAR(255) DEFAULT NULL,
    i_units           VARCHAR(255) DEFAULT NULL,
    i_container       VARCHAR(255) DEFAULT NULL,
    i_manager_id      BIGINT DEFAULT NULL,
    i_product_name    VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE store (
    s_store_sk           BIGINT,
    s_store_id           VARCHAR(255) NOT NULL,
    s_rec_start_date     DATE DEFAULT NULL,
    s_rec_end_date       DATE DEFAULT NULL,
    s_closed_date_sk     BIGINT DEFAULT NULL,
    s_store_name         VARCHAR(255) DEFAULT NULL,
    s_number_employees   BIGINT DEFAULT NULL,
    s_floor_space        BIGINT DEFAULT NULL,
    s_hours              VARCHAR(255) DEFAULT NULL,
    s_manager            VARCHAR(255) DEFAULT NULL,
    s_market_id          BIGINT DEFAULT NULL,
    s_geography_class    VARCHAR(255) DEFAULT NULL,
    s_market_desc        VARCHAR(255) DEFAULT NULL,
    s_market_manager     VARCHAR(255) DEFAULT NULL,
    s_division_id        BIGINT DEFAULT NULL,
    s_division_name      VARCHAR(255) DEFAULT NULL,
    s_company_id         BIGINT DEFAULT NULL,
    s_company_name       VARCHAR(255) DEFAULT NULL,
    s_street_number      VARCHAR(255) DEFAULT NULL,
    s_street_name        VARCHAR(255) DEFAULT NULL,
    s_street_type        VARCHAR(255) DEFAULT NULL,
    s_suite_number       VARCHAR(255) DEFAULT NULL,
    s_city               VARCHAR(255) DEFAULT NULL,
    s_county             VARCHAR(255) DEFAULT NULL,
    s_state              VARCHAR(255) DEFAULT NULL,
    s_zip                VARCHAR(255) DEFAULT NULL,
    s_country            VARCHAR(255) DEFAULT NULL,
    s_gmt_offset         FLOAT DEFAULT NULL,
    s_tax_precentage     FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE call_center (
    cc_call_center_sk     BIGINT,
    cc_call_center_id     VARCHAR(255) NOT NULL,
    cc_rec_start_date     DATE DEFAULT NULL,
    cc_rec_end_date       DATE DEFAULT NULL,
    cc_closed_date_sk     BIGINT DEFAULT NULL,
    cc_open_date_sk       BIGINT DEFAULT NULL,
    cc_name               VARCHAR(255) DEFAULT NULL,
    cc_class              VARCHAR(255) DEFAULT NULL,
    cc_employees          BIGINT DEFAULT NULL,
    cc_sq_ft              BIGINT DEFAULT NULL,
    cc_hours              VARCHAR(255) DEFAULT NULL,
    cc_manager            VARCHAR(255) DEFAULT NULL,
    cc_mkt_id             BIGINT DEFAULT NULL,
    cc_mkt_class          VARCHAR(255) DEFAULT NULL,
    cc_mkt_desc           VARCHAR(255) DEFAULT NULL,
    cc_market_manager     VARCHAR(255) DEFAULT NULL,
    cc_division           BIGINT DEFAULT NULL,
    cc_division_name      VARCHAR(255) DEFAULT NULL,
    cc_company            BIGINT DEFAULT NULL,
    cc_company_name       VARCHAR(255) DEFAULT NULL,
    cc_street_number      VARCHAR(255) DEFAULT NULL,
    cc_street_name        VARCHAR(255) DEFAULT NULL,
    cc_street_type        VARCHAR(255) DEFAULT NULL,
    cc_suite_number       VARCHAR(255) DEFAULT NULL,
    cc_city               VARCHAR(255) DEFAULT NULL,
    cc_county             VARCHAR(255) DEFAULT NULL,
    cc_state              VARCHAR(255) DEFAULT NULL,
    cc_zip                VARCHAR(255) DEFAULT NULL,
    cc_country            VARCHAR(255) DEFAULT NULL,
    cc_gmt_offset         FLOAT DEFAULT NULL,
    cc_tax_percentage     FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE customer (
    c_customer_sk           BIGINT,
    c_customer_id           VARCHAR(255) NOT NULL,
    c_current_cdemo_sk      BIGINT DEFAULT NULL,
    c_current_hdemo_sk      BIGINT DEFAULT NULL,
    c_current_addr_sk       BIGINT DEFAULT NULL,
    c_first_shipto_date_sk  BIGINT DEFAULT NULL,
    c_first_sales_date_sk   BIGINT DEFAULT NULL,
    c_salutation            VARCHAR(255) DEFAULT NULL,
    c_first_name            VARCHAR(255) DEFAULT NULL,
    c_last_name             VARCHAR(255) DEFAULT NULL,
    c_preferred_cust_flag   VARCHAR(255) DEFAULT NULL,
    c_birth_day             BIGINT DEFAULT NULL,
    c_birth_month           BIGINT DEFAULT NULL,
    c_birth_year            BIGINT DEFAULT NULL,
    c_birth_country         VARCHAR(255) DEFAULT NULL,
    c_login                 VARCHAR(255) DEFAULT NULL,
    c_email_address         VARCHAR(255) DEFAULT NULL,
    c_last_review_date      VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE web_site (
    web_site_sk           BIGINT,
    web_site_id           VARCHAR(255) NOT NULL,
    web_rec_start_date    DATE DEFAULT NULL,
    web_rec_end_date      DATE DEFAULT NULL,
    web_name              VARCHAR(255) DEFAULT NULL,
    web_open_date_sk      BIGINT DEFAULT NULL,
    web_close_date_sk     BIGINT DEFAULT NULL,
    web_class             VARCHAR(255) DEFAULT NULL,
    web_manager           VARCHAR(255) DEFAULT NULL,
    web_mkt_id            BIGINT DEFAULT NULL,
    web_mkt_class         VARCHAR(255) DEFAULT NULL,
    web_mkt_desc          VARCHAR(255) DEFAULT NULL,
    web_market_manager    VARCHAR(255) DEFAULT NULL,
    web_company_id        BIGINT DEFAULT NULL,
    web_company_name      VARCHAR(255) DEFAULT NULL,
    web_street_number     VARCHAR(255) DEFAULT NULL,
    web_street_name       VARCHAR(255) DEFAULT NULL,
    web_street_type       VARCHAR(255) DEFAULT NULL,
    web_suite_number      VARCHAR(255) DEFAULT NULL,
    web_city              VARCHAR(255) DEFAULT NULL,
    web_county            VARCHAR(255) DEFAULT NULL,
    web_state             VARCHAR(255) DEFAULT NULL,
    web_zip               VARCHAR(255) DEFAULT NULL,
    web_country           VARCHAR(255) DEFAULT NULL,
    web_gmt_offset        FLOAT DEFAULT NULL,
    web_tax_percentage    FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE store_returns (
    sr_returned_date_sk      BIGINT DEFAULT NULL,
    sr_return_time_sk        BIGINT DEFAULT NULL,
    sr_item_sk               BIGINT NOT NULL,
    sr_customer_sk           BIGINT DEFAULT NULL,
    sr_cdemo_sk              BIGINT DEFAULT NULL,
    sr_hdemo_sk              BIGINT DEFAULT NULL,
    sr_addr_sk               BIGINT DEFAULT NULL,
    sr_store_sk              BIGINT DEFAULT NULL,
    sr_reason_sk             BIGINT DEFAULT NULL,
    sr_ticket_number         BIGINT NOT NULL,
    sr_return_quantity       BIGINT DEFAULT NULL,
    sr_return_amt            FLOAT DEFAULT NULL,
    sr_return_tax            FLOAT DEFAULT NULL,
    sr_return_amt_inc_tax    FLOAT DEFAULT NULL,
    sr_fee                   FLOAT DEFAULT NULL,
    sr_return_ship_cost      FLOAT DEFAULT NULL,
    sr_refunded_cash         FLOAT DEFAULT NULL,
    sr_reversed_charge       FLOAT DEFAULT NULL,
    sr_store_credit          FLOAT DEFAULT NULL,
    sr_net_loss              FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE household_demographics (
    hd_demo_sk           BIGINT,
    hd_income_band_sk    BIGINT DEFAULT NULL,
    hd_buy_potential     VARCHAR(255) DEFAULT NULL,
    hd_dep_count         BIGINT DEFAULT NULL,
    hd_vehicle_count     BIGINT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE web_page (
    wp_web_page_sk       BIGINT,
    wp_web_page_id       VARCHAR(255) NOT NULL,
    wp_rec_start_date    DATE DEFAULT NULL,
    wp_rec_end_date      DATE DEFAULT NULL,
    wp_creation_date_sk  BIGINT DEFAULT NULL,
    wp_access_date_sk    BIGINT DEFAULT NULL,
    wp_autogen_flag      VARCHAR(255) DEFAULT NULL,
    wp_customer_sk       BIGINT DEFAULT NULL,
    wp_url               VARCHAR(255) DEFAULT NULL,
    wp_type              VARCHAR(255) DEFAULT NULL,
    wp_char_count        BIGINT DEFAULT NULL,
    wp_link_count        BIGINT DEFAULT NULL,
    wp_image_count       BIGINT DEFAULT NULL,
    wp_max_ad_count      BIGINT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE promotion (
    p_promo_sk           BIGINT,
    p_promo_id           VARCHAR(255) NOT NULL,
    p_start_date_sk      BIGINT DEFAULT NULL,
    p_end_date_sk        BIGINT DEFAULT NULL,
    p_item_sk            BIGINT DEFAULT NULL,
    p_cost               DOUBLE DEFAULT NULL,
    p_response_target    BIGINT DEFAULT NULL,
    p_promo_name         VARCHAR(255) DEFAULT NULL,
    p_channel_dmail      VARCHAR(255) DEFAULT NULL,
    p_channel_email      VARCHAR(255) DEFAULT NULL,
    p_channel_catalog    VARCHAR(255) DEFAULT NULL,
    p_channel_tv         VARCHAR(255) DEFAULT NULL,
    p_channel_radio      VARCHAR(255) DEFAULT NULL,
    p_channel_press      VARCHAR(255) DEFAULT NULL,
    p_channel_event      VARCHAR(255) DEFAULT NULL,
    p_channel_demo       VARCHAR(255) DEFAULT NULL,
    p_channel_details    VARCHAR(255) DEFAULT NULL,
    p_purpose            VARCHAR(255) DEFAULT NULL,
    p_discount_active    VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE catalog_page (
    cp_catalog_page_sk      BIGINT,
    cp_catalog_page_id      VARCHAR(255) NOT NULL,
    cp_start_date_sk        BIGINT DEFAULT NULL,
    cp_end_date_sk          BIGINT DEFAULT NULL,
    cp_department           VARCHAR(255) DEFAULT NULL,
    cp_catalog_number       BIGINT DEFAULT NULL,
    cp_catalog_page_number  BIGINT DEFAULT NULL,
    cp_description          VARCHAR(255) DEFAULT NULL,
    cp_type                 VARCHAR(255) DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE inventory (
    inv_date_sk            BIGINT NOT NULL,
    inv_item_sk            BIGINT NOT NULL,
    inv_warehouse_sk       BIGINT NOT NULL,
    inv_quantity_on_hand   BIGINT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE catalog_returns (
    cr_returned_date_sk      BIGINT DEFAULT NULL,
    cr_returned_time_sk      BIGINT DEFAULT NULL,
    cr_item_sk               BIGINT NOT NULL,
    cr_refunded_customer_sk  BIGINT DEFAULT NULL,
    cr_refunded_cdemo_sk     BIGINT DEFAULT NULL,
    cr_refunded_hdemo_sk     BIGINT DEFAULT NULL,
    cr_refunded_addr_sk      BIGINT DEFAULT NULL,
    cr_returning_customer_sk BIGINT DEFAULT NULL,
    cr_returning_cdemo_sk    BIGINT DEFAULT NULL,
    cr_returning_hdemo_sk    BIGINT DEFAULT NULL,
    cr_returning_addr_sk     BIGINT DEFAULT NULL,
    cr_call_center_sk        BIGINT DEFAULT NULL,
    cr_catalog_page_sk       BIGINT DEFAULT NULL,
    cr_ship_mode_sk          BIGINT DEFAULT NULL,
    cr_warehouse_sk          BIGINT DEFAULT NULL,
    cr_reason_sk             BIGINT DEFAULT NULL,
    cr_order_number          BIGINT NOT NULL,
    cr_return_quantity       BIGINT DEFAULT NULL,
    cr_return_amount         FLOAT DEFAULT NULL,
    cr_return_tax            FLOAT DEFAULT NULL,
    cr_return_amt_inc_tax    FLOAT DEFAULT NULL,
    cr_fee                   FLOAT DEFAULT NULL,
    cr_return_ship_cost      FLOAT DEFAULT NULL,
    cr_refunded_cash         FLOAT DEFAULT NULL,
    cr_reversed_charge       FLOAT DEFAULT NULL,
    cr_store_credit          FLOAT DEFAULT NULL,
    cr_net_loss              FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE web_returns (
    wr_returned_date_sk      BIGINT DEFAULT NULL,
    wr_returned_time_sk      BIGINT DEFAULT NULL,
    wr_item_sk               BIGINT NOT NULL,
    wr_refunded_customer_sk  BIGINT DEFAULT NULL,
    wr_refunded_cdemo_sk     BIGINT DEFAULT NULL,
    wr_refunded_hdemo_sk     BIGINT DEFAULT NULL,
    wr_refunded_addr_sk      BIGINT DEFAULT NULL,
    wr_returning_customer_sk BIGINT DEFAULT NULL,
    wr_returning_cdemo_sk    BIGINT DEFAULT NULL,
    wr_returning_hdemo_sk    BIGINT DEFAULT NULL,
    wr_returning_addr_sk     BIGINT DEFAULT NULL,
    wr_web_page_sk           BIGINT DEFAULT NULL,
    wr_reason_sk             BIGINT DEFAULT NULL,
    wr_order_number          BIGINT NOT NULL,
    wr_return_quantity       BIGINT DEFAULT NULL,
    wr_return_amt            FLOAT DEFAULT NULL,
    wr_return_tax            FLOAT DEFAULT NULL,
    wr_return_amt_inc_tax    FLOAT DEFAULT NULL,
    wr_fee                   FLOAT DEFAULT NULL,
    wr_return_ship_cost      FLOAT DEFAULT NULL,
    wr_refunded_cash         FLOAT DEFAULT NULL,
    wr_reversed_charge       FLOAT DEFAULT NULL,
    wr_account_credit        FLOAT DEFAULT NULL,
    wr_net_loss              FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE web_sales (
    ws_sold_date_sk           BIGINT DEFAULT NULL,
    ws_sold_time_sk           BIGINT DEFAULT NULL,
    ws_ship_date_sk           BIGINT DEFAULT NULL,
    ws_item_sk                BIGINT NOT NULL,
    ws_bill_customer_sk       BIGINT DEFAULT NULL,
    ws_bill_cdemo_sk          BIGINT DEFAULT NULL,
    ws_bill_hdemo_sk          BIGINT DEFAULT NULL,
    ws_bill_addr_sk           BIGINT DEFAULT NULL,
    ws_ship_customer_sk       BIGINT DEFAULT NULL,
    ws_ship_cdemo_sk          BIGINT DEFAULT NULL,
    ws_ship_hdemo_sk          BIGINT DEFAULT NULL,
    ws_ship_addr_sk           BIGINT DEFAULT NULL,
    ws_web_page_sk            BIGINT DEFAULT NULL,
    ws_web_site_sk            BIGINT DEFAULT NULL,
    ws_ship_mode_sk           BIGINT DEFAULT NULL,
    ws_warehouse_sk           BIGINT DEFAULT NULL,
    ws_promo_sk               BIGINT DEFAULT NULL,
    ws_order_number           BIGINT NOT NULL,
    ws_quantity               BIGINT DEFAULT NULL,
    ws_wholesale_cost         FLOAT DEFAULT NULL,
    ws_list_price             FLOAT DEFAULT NULL,
    ws_sales_price            FLOAT DEFAULT NULL,
    ws_ext_discount_amt       FLOAT DEFAULT NULL,
    ws_ext_sales_price        FLOAT DEFAULT NULL,
    ws_ext_wholesale_cost     FLOAT DEFAULT NULL,
    ws_ext_list_price         FLOAT DEFAULT NULL,
    ws_ext_tax                FLOAT DEFAULT NULL,
    ws_coupon_amt             FLOAT DEFAULT NULL,
    ws_ext_ship_cost          FLOAT DEFAULT NULL,
    ws_net_paid               FLOAT DEFAULT NULL,
    ws_net_paid_inc_tax       FLOAT DEFAULT NULL,
    ws_net_paid_inc_ship      FLOAT DEFAULT NULL,
    ws_net_paid_inc_ship_tax  FLOAT DEFAULT NULL,
    ws_net_profit             FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE catalog_sales (
    cs_sold_date_sk           BIGINT DEFAULT NULL,
    cs_sold_time_sk           BIGINT DEFAULT NULL,
    cs_ship_date_sk           BIGINT DEFAULT NULL,
    cs_bill_customer_sk       BIGINT DEFAULT NULL,
    cs_bill_cdemo_sk          BIGINT DEFAULT NULL,
    cs_bill_hdemo_sk          BIGINT DEFAULT NULL,
    cs_bill_addr_sk           BIGINT DEFAULT NULL,
    cs_ship_customer_sk       BIGINT DEFAULT NULL,
    cs_ship_cdemo_sk          BIGINT DEFAULT NULL,
    cs_ship_hdemo_sk          BIGINT DEFAULT NULL,
    cs_ship_addr_sk           BIGINT DEFAULT NULL,
    cs_call_center_sk         BIGINT DEFAULT NULL,
    cs_catalog_page_sk        BIGINT DEFAULT NULL,
    cs_ship_mode_sk           BIGINT DEFAULT NULL,
    cs_warehouse_sk           BIGINT DEFAULT NULL,
    cs_item_sk                BIGINT NOT NULL,
    cs_promo_sk               BIGINT DEFAULT NULL,
    cs_order_number           BIGINT NOT NULL,
    cs_quantity               BIGINT DEFAULT NULL,
    cs_wholesale_cost         FLOAT DEFAULT NULL,
    cs_list_price             FLOAT DEFAULT NULL,
    cs_sales_price            FLOAT DEFAULT NULL,
    cs_ext_discount_amt       FLOAT DEFAULT NULL,
    cs_ext_sales_price        FLOAT DEFAULT NULL,
    cs_ext_wholesale_cost     FLOAT DEFAULT NULL,
    cs_ext_list_price         FLOAT DEFAULT NULL,
    cs_ext_tax                FLOAT DEFAULT NULL,
    cs_coupon_amt             FLOAT DEFAULT NULL,
    cs_ext_ship_cost          FLOAT DEFAULT NULL,
    cs_net_paid               FLOAT DEFAULT NULL,
    cs_net_paid_inc_tax       FLOAT DEFAULT NULL,
    cs_net_paid_inc_ship      FLOAT DEFAULT NULL,
    cs_net_paid_inc_ship_tax  FLOAT DEFAULT NULL,
    cs_net_profit             FLOAT DEFAULT NULL
) ENGINE=ColumnStore;

CREATE TABLE store_sales (
    ss_sold_date_sk           BIGINT DEFAULT NULL,
    ss_sold_time_sk           BIGINT DEFAULT NULL,
    ss_item_sk                BIGINT NOT NULL,
    ss_customer_sk            BIGINT DEFAULT NULL,
    ss_cdemo_sk               BIGINT DEFAULT NULL,
    ss_hdemo_sk               BIGINT DEFAULT NULL,
    ss_addr_sk                BIGINT DEFAULT NULL,
    ss_store_sk               BIGINT DEFAULT NULL,
    ss_promo_sk               BIGINT DEFAULT NULL,
    ss_ticket_number          BIGINT NOT NULL,
    ss_quantity               BIGINT DEFAULT NULL,
    ss_wholesale_cost         FLOAT DEFAULT NULL,
    ss_list_price             FLOAT DEFAULT NULL,
    ss_sales_price            FLOAT DEFAULT NULL,
    ss_ext_discount_amt       FLOAT DEFAULT NULL,
    ss_ext_sales_price        FLOAT DEFAULT NULL,
    ss_ext_wholesale_cost     FLOAT DEFAULT NULL,
    ss_ext_list_price         FLOAT DEFAULT NULL,
    ss_ext_tax                FLOAT DEFAULT NULL,
    ss_coupon_amt             FLOAT DEFAULT NULL,
    ss_net_paid               FLOAT DEFAULT NULL,
    ss_net_paid_inc_tax       FLOAT DEFAULT NULL,
    ss_net_profit             FLOAT DEFAULT NULL
) ENGINE=ColumnStore;
