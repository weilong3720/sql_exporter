#!/bin/bash
docker run -d -p 9399:9399 --name=sql_exporter \
 -v /data/kubernetes/ketanyun-sql-expoter-pvc-d968d9c4-578f-4da7-be88-0077f3622f4f/.:/exporter \
burningalchemist/sql_exporter:0.7.1 -config.file="/exporter/sql_exporter.yml"
