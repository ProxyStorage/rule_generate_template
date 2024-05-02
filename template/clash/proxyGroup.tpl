- name: {{ customParams.proxyName.Proxy }}
  type: select
  proxies: [{{ customParams.proxyName.Select }},{{ customParams.proxyName.Auto }},{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Reject }}]

- name: {{ customParams.proxyName.Select }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,[customParams.proxyName.HongKongSelect, customParams.proxyName.TaiWanSelect, customParams.proxyName.JapanSelect, customParams.proxyName.KoreaSelect, customParams.proxyName.SingaporeSelect, customParams.proxyName.AmericanSelect, customParams.proxyName.OtherSelect]) | json }}

- name: {{ customParams.proxyName.BiliBili }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Telegram }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Google }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Microsoft }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

{% if customParams.PRIVATE_GIST_ID_COMPANY %}
- name: {{ customParams.proxyName.Company }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]
{% endif %}

- name: {{ customParams.proxyName.Developer }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,[customParams.proxyName.HongKongSelect, customParams.proxyName.TaiWanSelect, customParams.proxyName.JapanSelect, customParams.proxyName.KoreaSelect, customParams.proxyName.SingaporeSelect, customParams.proxyName.AmericanSelect, customParams.proxyName.OtherSelect]) | json }}

- name: {{ customParams.proxyName.Coze }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.OpenAI }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Notion }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.TikTok }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

{% if customParams.PRIVATE_GIST_ID %}
- name: {{ customParams.proxyName.Performance }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]
{% endif %}

- name: {{ customParams.proxyName.Emby }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.SpeedTest }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.CCDN }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,['DIRECT', customParams.proxyName.HongKongSelect, customParams.proxyName.TaiWanSelect, customParams.proxyName.JapanSelect, customParams.proxyName.KoreaSelect, customParams.proxyName.SingaporeSelect, customParams.proxyName.AmericanSelect, customParams.proxyName.OtherSelect]) | json }}

- name: {{ customParams.proxyName.GCDN }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,[customParams.proxyName.HongKongSelect, customParams.proxyName.TaiWanSelect, customParams.proxyName.JapanSelect, customParams.proxyName.KoreaSelect, customParams.proxyName.SingaporeSelect, customParams.proxyName.AmericanSelect, customParams.proxyName.OtherSelect]) | json }}

- name: {{ customParams.proxyName.Reject }}
  type: select
  proxies: ['REJECT','DIRECT']

- name: {{ customParams.proxyName.Direct }}
  type: select
  proxies: ['DIRECT',{{ customParams.proxyName.Select }},'REJECT']

- name: {{ customParams.proxyName.Auto }}
  type: select
  proxies: {{ getClashNodeNames(nodeList) | json }}

- name: {{ customParams.proxyName.Final }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,[customParams.proxyName.Proxy,customParams.proxyName.Direct,customParams.proxyName.Reject,customParams.proxyName.HongKongSelect,customParams.proxyName.TaiWanSelect,customParams.proxyName.JapanSelect,customParams.proxyName.KoreaSelect,customParams.proxyName.SingaporeSelect,customParams.proxyName.AmericanSelect,customParams.proxyName.OtherSelect]) | json }}

- name: {{ customParams.proxyName.HongKongSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,hkFilter) | json }}

- name: {{ customParams.proxyName.TaiWanSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,taiwanFilter) | json }}

- name: {{ customParams.proxyName.JapanSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,japanFilter) | json }}

- name: {{ customParams.proxyName.KoreaSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,koreaFilter) | json }}

- name: {{ customParams.proxyName.SingaporeSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,singaporeFilter) | json }}

- name: {{ customParams.proxyName.AmericanSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,usFilter) | json }}

- name: {{ customParams.proxyName.EuropeSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.europeSelectFilter) | json }}

- name: {{ customParams.proxyName.OtherSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.otherSelectFilter) | json }}

- name: {{ customParams.proxyName.SubNodesSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,[]) | json }}
