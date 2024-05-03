{{ customParams.clashSnippet(getClashNodeNames(nodeList,customFilters.all,[])).ruleSnippet }}
- GEOIP,LAN,DIRECT
- GEOIP,CN,{{ customParams.proxyName.Direct }}
- MATCH,{{ customParams.proxyName.Final }}
