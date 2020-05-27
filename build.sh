#!/bin/bash
set -e
set -x

if [[ -z "${GRAFANA_VERSION}" ]]; then
  echo "No GRAFANA_VERSION environment variable set"
  exit 1
fi
wget https://dl.grafana.com/oss/release/grafana-v$GRAFANA_VERSION.linux-amd64.tar.gz
tar xvzf grafana-$GRAFANA_VERSION.linux-amd64.tar.gz
grafana-$GRAFANA_VERSION/bin/grafana-cli plugins install ovh-warp10-datasource
grafana-$GRAFANA_VERSION/bin/grafana-cli plugins install vonage-status-panel
grafana-$GRAFANA_VERSION/bin/grafana-cli plugins install grafana-polystat-panel
grafana-$GRAFANA_VERSION/bin/grafana-cli plugins install grafana-piechart-panel
