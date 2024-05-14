# {{ downloadUrl }}

{% include "clash/general.tpl" %}

hosts:
  {{ remoteSnippets.clashDnsMapHosts.text | indent(2) }}
  {{ remoteSnippets.clashDnsMapHostsGithub.text | indent(2) }}

{% if customParams.dns %}
{% include "clash/dns.tpl" %}
{% endif %}

proxies: {{ getClashNodes(nodeList) | json }}

proxy-groups:
{% include "clash/proxyGroup.tpl" %}

rules:
{% include "clash/rule.tpl" %}

{% include "clash/ruleProvider.tpl" %}
