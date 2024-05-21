# {{ downloadUrl }}

{% include "clash/general.tpl" %}

hosts:
  {{ remoteSnippets.clashDnsMapHostsGithub.text | indent(2) }}

proxies: {{ getClashNodes(nodeList) | json }}

proxy-groups:
{% include "clash/proxyGroup.tpl" %}

rules:
{% include "clash/rule.tpl" %}

{% include "clash/ruleProvider.tpl" %}
