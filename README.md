# ES Index Stats Exporter
#The scripts is a different from elasticsearch_exporter because they summarize data to give a unique metric for a group of indices (defined by the regex). This work's better for time series data of specific ranges

# Dependencies

- python 2.7
- prometheus_client
- requests

# How it works

- The exporter querie for /_cat/indices (json format) to get indices stats (doc count and size). The exporter return summarize data by group of indices filtered by regex (indexPattern). For example, for a group of indice called customer-metrics-*, a regex like '(.*-logs)-20181010.*' will return 'customer-logs'

# Usage

Export env variable:

es.endpoint: http://endpointES:9200
es.index.pattern: (.*-logs).*

Run the script

./es-index-stats-exporter.py

# Docker

docker run -d -e es.endpoint="http://endpointES:9200" -e es.index.pattern="(.*-logs).*" -p 9099:9099 alanwds/es-index-stats

#######
PR, comments and enhancements are always welcome.
