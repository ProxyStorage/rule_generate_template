{{ customParams.ruleSnippet }}

RULE-SET,LAN,{{ customParams.proxyName.Direct }}
GEOIP,CN,{{ customParams.proxyName.Direct }}
# RULE-SET,https://raw.githubusercontent.com/VirgilClyne/GetSomeFries/main/ruleset/ASN.China.list ,{{ customParams.proxyName.Direct }}
FINAL,{{ customParams.proxyName.Final }},dns-failed
