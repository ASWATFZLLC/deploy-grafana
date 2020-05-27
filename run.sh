#!/bin/bash

export GF_PATHS_PLUGINS=grafana-$GRAFANA_VERSION/data/plugins
grafana-$GRAFANA_VERSION/bin/grafana-server -homepath grafana-$GRAFANA_VERSION
