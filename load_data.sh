#!/bin/bash

# In case you have errors, modify this path to folder with generated data
DATA_DIR=~/tpc-ds-columnstore/v2.11.0rc2/tools/data

# List of tables to load
TABLES=(
  call_center catalog_page catalog_returns catalog_sales customer
  customer_address customer_demographics date_dim dbgen_version
  household_demographics income_band inventory item promotion
  reason ship_mode store store_returns store_sales time_dim
  warehouse web_page web_returns web_sales web_site
)

# Drop and recreate the database without password prompts
mariadb -u root -e "DROP DATABASE IF EXISTS tpcds;"
mariadb -u root -e "CREATE DATABASE tpcds;"

# Import schema
mariadb -u root tpcds < ~/tpc-ds-columnstore/schema/tpcds.sql

# Load each table
for table in "${TABLES[@]}"; do
  echo "Importing $table..."
  mariadb -u root tpcds -e "
    LOAD DATA LOCAL INFILE '${DATA_DIR}/${table}.dat'
    INTO TABLE ${table}
    FIELDS TERMINATED BY '|'
    LINES TERMINATED BY '\n';
  "
done

echo "All data imported successfully."
