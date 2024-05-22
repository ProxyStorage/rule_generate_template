# {{ downloadUrl }}

{% include "clash/general.tpl" %}

proxies: {{ getClashNodes(nodeList) | json }}

proxy-groups:
{% include "clash/proxyGroup.tpl" %}

rules:
{% include "clash/rule.tpl" %}

{% include "clash/ruleProvider.tpl" %}
