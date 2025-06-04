## This repository adapts schema for MariaDB Columnstore

## How to build in terminal:
1. cd ../v2.11.0rc2/tools
2. make LDFLAGS="-z muldefs -w"

## How to generate data (instead of 1, you can use other scales):
1. mkdir data
2. ./dsdgen -scale 1 -dir data

## How to load data into MariaDB Columnstore:
1. Modify shell script's path to schema and data, if necessary
2. In terminal run: sudo ./load_data.sh

## altinity-tpc-ds
ClickHouse TPC-DS (Decision Support Benchmark).

## Benchmark environment
* Data scale = 100 (100GB of data)
* Node size 16 CPU, 64GB RAM
* ClickHouse server version 24.1



## References

### TPC-DS documents

[TPC-DS Tools](http://www.tpc.org/tpc_documents_current_versions/current_specifications5.asp) or take [already downloaded](/assets/9b0e0c62-e2be-4183-9a51-de7de896b71d-tpc-ds-tool.zip)

### Others DB benchmarks

[Vertica White paper - Benchmarks Prove the Value of an Analytical Database for Big Data](https://www.vertica.com/wp-content/uploads/2017/01/Benchmarks-Prove-the-Value-of-an-Analytical-Database-for-Big-Data.pdf)

[Vertica TPC-DS benchmark performance analysis](http://bicortex.com/vertica-mpp-database-overview-and-tpc-ds-benchmark-performance-analysis-part-3/)

[tidb-bench](https://github.com/pingcap/tidb-bench)
