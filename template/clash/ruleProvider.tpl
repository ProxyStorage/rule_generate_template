rule-providers:
  direct_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/direct/direct_domain.list
    path: ./DreamyTZK/my_reject_domain.txt
  direct_no_ip:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/direct/direct_no_ip_rule.list
    path: ./DreamyTZK/my_reject_non_ip.txt
  reject_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/reject_tinygif/reject_tinygif_domain.list
    path: ./DreamyTZK/reject_tinygif_domain.txt
  reject_plus_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/reject_plus/reject_plus_domain.list
    path: ./DreamyTZK/reject_plus_domain.txt
  CCDN_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/CCDN/CCDN_domain.list
    path: ./DreamyTZK/CCDN_domain.txt
  wechat_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/wechat/wechat_domain.list
    path: ./DreamyTZK/wechat_domain.txt
  bilibili_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/bilibili/bilibili_domain.list
    path: ./DreamyTZK/bilibili_domain.txt
  GCDN_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/GCDN/GCDN_domain.list
    path: ./DreamyTZK/GCDN_domain.txt
  GCDN_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/GCDN/GCDN_no_ip_rule.list
    path: ./DreamyTZK/GCDN_no_ip_rule.txt
  GCDN_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/GCDN/GCDN_ip_rule.list
    path: ./DreamyTZK/GCDN_ip_rule.txt
  ai_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/ai/ai_domain.list
    path: ./DreamyTZK/ai_domain.txt
  notion_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/notion/notion_domain.list
    path: ./DreamyTZK/notion_domain.txt
  google_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/google/google_domain.list
    path: ./DreamyTZK/google_domain.txt
  microsoft_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/microsoft/microsoft_domain.list
    path: ./DreamyTZK/microsoft_domain.txt
  tiktok_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/tiktok/tiktok_domain.list
    path: ./DreamyTZK/tiktok_domain.txt
  stream_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream/stream_domain.list
    path: ./DreamyTZK/stream_domain.txt
  stream_us_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_us/stream_us_domain.list
    path: ./DreamyTZK/stream_us_domain.txt
  stream_jp_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_jp/stream_jp_domain.list
    path: ./DreamyTZK/stream_jp_domain.txt
  stream_kr_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_kr/stream_kr_domain.list
    path: ./DreamyTZK/stream_kr_domain.txt
  stream_hk_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_hk/stream_hk_domain.list
    path: ./DreamyTZK/stream_hk_domain.txt
  stream_tw_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_tw/stream_tw_domain.list
    path: ./DreamyTZK/stream_tw_domain.txt
  stream_eu_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_eu/stream_eu_domain.list
    path: ./DreamyTZK/stream_eu_domain.txt
  developer_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/developer/developer_domain.list
    path: ./DreamyTZK/developer_domain.txt
  speedtest_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/speedtest/speedtest_domain.list
    path: ./DreamyTZK/speedtest_domain.txt
  global_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/global/global_domain.list
    path: ./DreamyTZK/global_domain.txt
  domestic_domain:
    type: http
    behavior: domain
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/domestic/domestic_domain.list
    path: ./DreamyTZK/domestic_domain.txt
  reject_drop_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/reject_drop/reject_drop_no_ip_rule.list
    path: ./DreamyTZK/reject_drop_no_ip_rule.txt
  reject_plus_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/reject_plus/reject_plus_no_ip_rule.list
    path: ./DreamyTZK/reject_plus_no_ip_rule.txt
  CCDN_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/CCDN/CCDN_no_ip_rule.list
    path: ./DreamyTZK/CCDN_no_ip_rule.txt
  CCDN_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/CCDN/CCDN_ip_rule.list
    path: ./DreamyTZK/CCDN_ip_rule.txt
  wechat_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/wechat/wechat_no_ip_rule.list
    path: ./DreamyTZK/wechat_no_ip_rule.txt
  bilibili_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/bilibili/bilibili_no_ip_rule.list
    path: ./DreamyTZK/bilibili_no_ip_rule.txt
  {% if customParams.PRIVATE_GIST_ID_COMPANY %}
  company_rules:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID_COMPANY }}/raw/jescard
    path: ./DreamyTZK/company_rules.txt
  {% endif %}
  coze_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/coze/coze_no_ip_rule.list
    path: ./DreamyTZK/coze_no_ip_rule.txt
  ai_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/ai/ai_no_ip_rule.list
    path: ./DreamyTZK/ai_no_ip_rule.txt
  notion_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/notion/notion_no_ip_rule.list
    path: ./DreamyTZK/notion_no_ip_rule.txt
  google_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/google/google_no_ip_rule.list
    path: ./DreamyTZK/google_no_ip_rule.txt
  microsoft_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/microsoft/microsoft_no_ip_rule.list
    path: ./DreamyTZK/microsoft_no_ip_rule.txt
  tiktok_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/tiktok/tiktok_no_ip_rule.list
    path: ./DreamyTZK/tiktok_no_ip_rule.txt
  {% if customParams.PRIVATE_GIST_ID %}
  performance:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID }}/raw/performance
    path: ./DreamyTZK/performance.txt
  emby:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID }}/raw/emby
    path: ./DreamyTZK/emby.txt
  my_direct:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID }}/raw/direct
    path: ./DreamyTZK/my_direct_no_ip.txt
  {% endif %}

  stream_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream/stream_no_ip_rule.list
    path: ./DreamyTZK/stream_no_ip_rule.txt
  stream_us_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_us/stream_us_no_ip_rule.list
    path: ./DreamyTZK/stream_us_no_ip_rule.txt
  stream_jp_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_jp/stream_jp_no_ip_rule.list
    path: ./DreamyTZK/stream_jp_no_ip_rule.txt
  stream_kr_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_kr/stream_kr_no_ip_rule.list
    path: ./DreamyTZK/stream_kr_no_ip_rule.txt
  stream_hk_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_hk/stream_hk_no_ip_rule.list
    path: ./DreamyTZK/stream_hk_no_ip_rule.txt
  stream_tw_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_tw/stream_tw_no_ip_rule.list
    path: ./DreamyTZK/stream_tw_no_ip_rule.txt
  stream_eu_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_eu/stream_eu_no_ip_rule.list
    path: ./DreamyTZK/stream_eu_no_ip_rule.txt
  developer_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/developer/developer_no_ip_rule.list
    path: ./DreamyTZK/developer_no_ip_rule.txt
  speedtest_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/speedtest/speedtest_no_ip_rule.list
    path: ./DreamyTZK/speedtest_no_ip_rule.txt
  global_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/global/global_no_ip_rule.list
    path: ./DreamyTZK/global_no_ip_rule.txt
  domestic_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/domestic/domestic_no_ip_rule.list
    path: ./DreamyTZK/domestic_no_ip_rule.txt
  reject_plus_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/reject_plus/reject_plus_ip_rule.list
    path: ./DreamyTZK/reject_plus_ip_rule.txt
  wechat_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/wechat/wechat_ip_rule.list
    path: ./DreamyTZK/wechat_ip_rule.txt
  bilibili_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/bilibili/bilibili_ip_rule.list
    path: ./DreamyTZK/bilibili_ip_rule.txt
  ai_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/ai/ai_ip_rule.list
    path: ./DreamyTZK/ai_ip_rule.txt
  notion_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/notion/notion_ip_rule.list
    path: ./DreamyTZK/notion_ip_rule.txt
  google_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/google/google_ip_rule.list
    path: ./DreamyTZK/google_ip_rule.txt
  telegram_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/telegram/telegram_ip_rule.list
    path: ./DreamyTZK/telegram_ip_rule.txt
  microsoft_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/microsoft/microsoft_ip_rule.list
    path: ./DreamyTZK/microsoft_ip_rule.txt
  tiktok_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/tiktok/tiktok_ip_rule.list
    path: ./DreamyTZK/tiktok_ip_rule.txt
  developer_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/developer/developer_ip_rule.list
    path: ./DreamyTZK/developer_ip_rule.txt
  stream_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream/stream_ip_rule.list
    path: ./DreamyTZK/stream_ip_rule.txt
  stream_us_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_us/stream_us_ip_rule.list
    path: ./DreamyTZK/stream_us_ip_rule.txt
  stream_jp_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_jp/stream_jp_ip_rule.list
    path: ./DreamyTZK/stream_jp_ip_rule.txt
  stream_kr_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_kr/stream_kr_ip_rule.list
    path: ./DreamyTZK/stream_kr_ip_rule.txt
  stream_tw_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_tw/stream_tw_ip_rule.list
    path: ./DreamyTZK/stream_tw_ip_rule.txt
  stream_hk_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_hk/stream_hk_ip_rule.list
    path: ./DreamyTZK/stream_hk_ip_rule.txt
  stream_eu_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/stream_eu/stream_eu_ip_rule.list
    path: ./DreamyTZK/stream_eu_ip_rule.txt
  speedtest_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/speedtest/speedtest_ip_rule.list
    path: ./DreamyTZK/speedtest_ip_rule.txt
  global_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/global/global_ip_rule.list
    path: ./DreamyTZK/global_ip_rule.txt
  domestic_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/domestic/domestic_ip_rule.list
    path: ./DreamyTZK/domestic_ip_rule.txt
  1passwordUS_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/1passwordUS/1passwordUS_ip_rule.list
    path: ./DreamyTZK/1passwordUS_ip_rule.list
  1passwordUS_no_ip_rule:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/1passwordUS/1passwordUS_no_ip_rule.list
    path: ./DreamyTZK/1passwordUS_no_ip_rule.list
  1passwordUS_domain:
    type: http
    behavior: classical
    format: text
    interval: 43200
    url: https://rule.acs.pw/clash/rule/1passwordUS/1passwordUS_domain.list
    path: ./DreamyTZK/1passwordUS_domain.list
