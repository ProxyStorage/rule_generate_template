# 不应该被代理的规则
DOMAIN-SET,https://rule.acs.pw/surge/rule/direct/direct_domain.list ,DIRECT
RULE-SET,https://rule.acs.pw/surge/rule/direct/direct_no_ip_rule.list ,DIRECT

# 广告拦截 domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/reject_tinygif/reject_tinygif_domain.list ,REJECT-TINYGIF
DOMAIN-SET,https://rule.acs.pw/surge/rule/reject_plus/reject_plus_domain.list ,{{ customParams.proxyName.Reject }}

# 微信 domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/wechat/wechat_domain.list ,DIRECT

# 哔哩哔哩 domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/bilibili/bilibili_domain.list ,{{ customParams.proxyName.BiliBili }}

# CCDN domain set
DOMAIN-SET, https://rule.acs.pw/surge/rule/CCDN/CCDN_domain.list ,{{ customParams.proxyName.CCDN }}

# open ai domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/ai/ai_domain.list ,{{ customParams.proxyName.OpenAI }}

# PikPak domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/pikpak/pikpak_domain.list ,{{ customParams.proxyName.PikPak }}

# Notion domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/notion/notion_domain.list ,{{ customParams.proxyName.Notion }}

# Google domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/google/google_domain.list ,{{ customParams.proxyName.Google }}

# Microsoft domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/microsoft/microsoft_domain.list ,{{ customParams.proxyName.Microsoft }}

# TikTok domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/tiktok/tiktok_domain.list ,{{ customParams.proxyName.TikTok }}

# 1password us domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/1passwordUS/1passwordUS_domain.list ,{{ customParams.proxyName.AmericanSelect }}

# 流媒体 domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/stream/stream_domain.list ,{{ customParams.proxyName.Emby }}
DOMAIN-SET,https://rule.acs.pw/surge/rule/stream_us/stream_us_domain.list ,{{ customParams.proxyName.AmericanSelect }}
DOMAIN-SET,https://rule.acs.pw/surge/rule/stream_jp/stream_jp_domain.list ,{{ customParams.proxyName.JapanSelect }}
DOMAIN-SET,https://rule.acs.pw/surge/rule/stream_kr/stream_kr_domain.list ,{{ customParams.proxyName.KoreaSelect }}
DOMAIN-SET,https://rule.acs.pw/surge/rule/stream_hk/stream_hk_domain.list ,{{ customParams.proxyName.HongKongSelect }}
DOMAIN-SET,https://rule.acs.pw/surge/rule/stream_tw/stream_tw_domain.list ,{{ customParams.proxyName.TaiWanSelect }}
DOMAIN-SET,https://rule.acs.pw/surge/rule/stream_eu/stream_eu_domain.list ,{{ customParams.proxyName.EuropeSelect }}

# Developer domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/developer/developer_domain.list ,{{ customParams.proxyName.Developer }}

# SpeedTest domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/speedtest/speedtest_domain.list ,{{ customParams.proxyName.SpeedTest }}

#GCDN domain set
DOMAIN-SET, https://rule.acs.pw/surge/rule/GCDN/GCDN_domain.list ,{{ customParams.proxyName.GCDN }}

# global domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/global/global_domain.list ,{{ customParams.proxyName.Proxy }}

# domestic domain set
DOMAIN-SET,https://rule.acs.pw/surge/rule/domestic/domestic_domain.list ,{{ customParams.proxyName.Direct }}

{% if customParams.isMac %}RULE-SET,https://rule.acs.pw/surge/rule/direct/direct_process_name.list ,DIRECT #macos only {% endif %}

# 广告拦截 no-ip
RULE-SET,https://rule.acs.pw/surge/rule/reject_drop/reject_drop_no_ip_rule.list ,REJECT-DROP
RULE-SET,https://rule.acs.pw/surge/rule/reject_plus/reject_plus_no_ip_rule.list ,{{ customParams.proxyName.Reject }}
AND,((PROTOCOL,UDP), (DEST-PORT,443)),REJECT-NO-DROP

{% if customParams.PRIVATE_GIST_ID %}
# my-direct no-ip
RULE-SET,https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID }}/raw/direct ,{{ customParams.proxyName.Direct }}
{% endif %}

# 微信 no-ip
RULE-SET,https://rule.acs.pw/surge/rule/wechat/wechat_no_ip_rule.list ,DIRECT

# 哔哩哔哩 no-ip
RULE-SET,https://rule.acs.pw/surge/rule/bilibili/bilibili_no_ip_rule.list ,{{ customParams.proxyName.BiliBili }}

{% if customParams.PRIVATE_GIST_ID_COMPANY %}
# 公司 no-ip
RULE-SET,https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID_COMPANY }}/raw/jescard ,{{ customParams.proxyName.Company }}
{% endif %}

# CCDN no-ip
RULE-SET, https://rule.acs.pw/surge/rule/CCDN/CCDN_no_ip_rule.list ,{{ customParams.proxyName.CCDN }}

# coze no-ip
RULE-SET,https://rule.acs.pw/surge/rule/coze/coze_no_ip_rule.list ,{{ customParams.proxyName.Coze }}

# open ai no-ip
RULE-SET,https://rule.acs.pw/surge/rule/ai/ai_no_ip_rule.list ,{{ customParams.proxyName.OpenAI }}

# PikPak no-ip
RULE-SET,https://rule.acs.pw/surge/rule/pikpak/pikpak_no_ip_rule.list ,{{ customParams.proxyName.PikPak }}

# Notion no-ip
RULE-SET,https://rule.acs.pw/surge/rule/notion/notion_no_ip_rule.list ,{{ customParams.proxyName.Notion }}

# Google no-ip
RULE-SET,https://rule.acs.pw/surge/rule/google/google_no_ip_rule.list ,{{ customParams.proxyName.Google }}

# Microsoft no-ip
RULE-SET,https://rule.acs.pw/surge/rule/microsoft/microsoft_no_ip_rule.list ,{{ customParams.proxyName.Microsoft }}

# TikTok no-ip
RULE-SET,https://rule.acs.pw/surge/rule/tiktok/tiktok_no_ip_rule.list ,{{ customParams.proxyName.TikTok }}

# 1password us no-ip
RULE-SET,https://rule.acs.pw/surge/rule/1passwordUS/1passwordUS_no_ip_rule.list ,{{ customParams.proxyName.AmericanSelect }}

{% if customParams.PRIVATE_GIST_ID %}
# Performance Test no-ip
RULE-SET,https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID }}/raw/performance ,{{ customParams.proxyName.Performance }}
# emby no-ip
RULE-SET,https://gist.githubusercontent.com/{{ customParams.PRIVATE_GIST_ID }}/raw/emby ,{{ customParams.proxyName.Emby }}
{% endif %}

# 流媒体 no-ip
RULE-SET,https://rule.acs.pw/surge/rule/stream/stream_no_ip_rule.list ,{{ customParams.proxyName.Emby }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_us/stream_us_no_ip_rule.list ,{{ customParams.proxyName.AmericanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_jp/stream_jp_no_ip_rule.list ,{{ customParams.proxyName.JapanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_kr/stream_kr_no_ip_rule.list ,{{ customParams.proxyName.KoreaSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_hk/stream_hk_no_ip_rule.list ,{{ customParams.proxyName.HongKongSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_tw/stream_tw_no_ip_rule.list ,{{ customParams.proxyName.TaiWanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_eu/stream_eu_no_ip_rule.list ,{{ customParams.proxyName.EuropeSelect }}

# Developer no-ip
RULE-SET,https://rule.acs.pw/surge/rule/developer/developer_no_ip_rule.list ,{{ customParams.proxyName.Developer }}

# SpeedTest no-ip
RULE-SET,https://rule.acs.pw/surge/rule/speedtest/speedtest_no_ip_rule.list ,{{ customParams.proxyName.SpeedTest }}

# GCDN no-ip
RULE-SET, https://rule.acs.pw/surge/rule/GCDN/GCDN_no_ip_rule.list ,{{ customParams.proxyName.GCDN }}

# global no-ip
RULE-SET,https://rule.acs.pw/surge/rule/global/global_no_ip_rule.list ,{{ customParams.proxyName.Proxy }}

# domestic no-ip
RULE-SET,https://rule.acs.pw/surge/rule/domestic/domestic_no_ip_rule.list ,{{ customParams.proxyName.Direct }}

# 广告拦截 ip
RULE-SET,https://rule.acs.pw/surge/rule/reject_plus/reject_plus_ip_rule.list ,{{ customParams.proxyName.Reject }}

# 微信 ip
RULE-SET,https://rule.acs.pw/surge/rule/wechat/wechat_ip_rule.list ,DIRECT
RULE-SET,https://rule.acs.pw/surge/rule/wechat/wechat_ip_asn_rule.list ,DIRECT

# CCDN ip
RULE-SET, https://rule.acs.pw/surge/rule/CCDN/CCDN_ip_rule.list ,{{ customParams.proxyName.CCDN }}

# open ai ip
RULE-SET,https://rule.acs.pw/surge/rule/ai/ai_ip_rule.list ,{{ customParams.proxyName.OpenAI }}
RULE-SET,https://rule.acs.pw/surge/rule/ai/ai_ip_asn_rule.list ,{{ customParams.proxyName.OpenAI }}

# 哔哩哔哩 ip
RULE-SET,https://rule.acs.pw/surge/rule/bilibili/bilibili_ip_rule.list ,{{ customParams.proxyName.BiliBili }}
RULE-SET,https://rule.acs.pw/surge/rule/bilibili/bilibili_ip_asn_rule.list ,{{ customParams.proxyName.BiliBili }}

# PikPak ip
RULE-SET,https://rule.acs.pw/surge/rule/pikpak/pikpak_ip_rule.list ,{{ customParams.proxyName.PikPak }}
RULE-SET,https://rule.acs.pw/surge/rule/pikpak/pikpak_ip_asn_rule.list ,{{ customParams.proxyName.PikPak }}

# Notion ip
RULE-SET,https://rule.acs.pw/surge/rule/notion/notion_ip_rule.list ,{{ customParams.proxyName.Notion }}
RULE-SET,https://rule.acs.pw/surge/rule/notion/notion_ip_asn_rule.list ,{{ customParams.proxyName.Notion }}

# Google ip
RULE-SET,https://rule.acs.pw/surge/rule/google/google_ip_rule.list ,{{ customParams.proxyName.Google }}
RULE-SET,https://rule.acs.pw/surge/rule/google/google_ip_asn_rule.list ,{{ customParams.proxyName.Google }}

# Telegram
RULE-SET,https://rule.acs.pw/surge/rule/telegram/telegram_no_ip_rule.list ,{{ customParams.proxyName.Telegram }}
RULE-SET,https://rule.acs.pw/surge/rule/telegram/telegram_ip_rule.list ,{{ customParams.proxyName.Telegram }}
{% if customParams.isMac %}PROCESS-NAME,Telegram,REJECT-DROP {% endif %}

# Microsoft ip
RULE-SET,https://rule.acs.pw/surge/rule/microsoft/microsoft_ip_rule.list ,{{ customParams.proxyName.Microsoft }}
RULE-SET,https://rule.acs.pw/surge/rule/microsoft/microsoft_ip_asn_rule.list ,{{ customParams.proxyName.Microsoft }}

# TikTok ip
RULE-SET,https://rule.acs.pw/surge/rule/tiktok/tiktok_ip_rule.list ,{{ customParams.proxyName.TikTok }}
RULE-SET,https://rule.acs.pw/surge/rule/tiktok/tiktok_ip_asn_rule.list ,{{ customParams.proxyName.TikTok }}

# 1password us ip
RULE-SET,https://rule.acs.pw/surge/rule/1passwordUS/1passwordUS_ip_rule.list ,{{ customParams.proxyName.AmericanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/1passwordUS/1passwordUS_ip_asn_rule.list ,{{ customParams.proxyName.AmericanSelect }}

# Developer ip
RULE-SET,https://rule.acs.pw/surge/rule/developer/developer_ip_rule.list ,{{ customParams.proxyName.Developer }}
RULE-SET,https://rule.acs.pw/surge/rule/developer/developer_ip_asn_rule.list ,{{ customParams.proxyName.Developer }}

# 流媒体 ip
RULE-SET,https://rule.acs.pw/surge/rule/stream/stream_ip_rule.list ,{{ customParams.proxyName.Emby }}
RULE-SET,https://rule.acs.pw/surge/rule/stream/stream_ip_asn_rule.list ,{{ customParams.proxyName.Emby }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_us/stream_us_ip_rule.list ,{{ customParams.proxyName.AmericanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_us/stream_us_ip_asn_rule.list ,{{ customParams.proxyName.AmericanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_jp/stream_jp_ip_rule.list ,{{ customParams.proxyName.JapanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_jp/stream_jp_ip_asn_rule.list ,{{ customParams.proxyName.JapanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_kr/stream_kr_ip_rule.list ,{{ customParams.proxyName.KoreaSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_kr/stream_kr_ip_asn_rule.list ,{{ customParams.proxyName.KoreaSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_hk/stream_hk_ip_rule.list ,{{ customParams.proxyName.HongKongSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_hk/stream_hk_ip_asn_rule.list ,{{ customParams.proxyName.HongKongSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_tw/stream_tw_ip_rule.list ,{{ customParams.proxyName.TaiWanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_tw/stream_tw_ip_asn_rule.list ,{{ customParams.proxyName.TaiWanSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_eu/stream_eu_ip_rule.list ,{{ customParams.proxyName.EuropeSelect }}
RULE-SET,https://rule.acs.pw/surge/rule/stream_eu/stream_eu_ip_asn_rule.list ,{{ customParams.proxyName.EuropeSelect }}

# SpeedTest ip
RULE-SET,https://rule.acs.pw/surge/rule/speedtest/speedtest_ip_rule.list ,{{ customParams.proxyName.SpeedTest }}
RULE-SET,https://rule.acs.pw/surge/rule/speedtest/speedtest_ip_asn_rule.list ,{{ customParams.proxyName.SpeedTest }}

# global ip
RULE-SET,https://rule.acs.pw/surge/rule/global/global_ip_rule.list ,{{ customParams.proxyName.Proxy }}
RULE-SET,https://rule.acs.pw/surge/rule/global/global_ip_asn_rule.list ,{{ customParams.proxyName.Proxy }}

# GCDN ip
RULE-SET, https://rule.acs.pw/surge/rule/GCDN/GCDN_ip_rule.list ,{{ customParams.proxyName.GCDN }}

# domestic ip
RULE-SET,https://rule.acs.pw/surge/rule/domestic/domestic_ip_rule.list ,{{ customParams.proxyName.Direct }}
RULE-SET,https://rule.acs.pw/surge/rule/domestic/domestic_ip_asn_rule.list ,{{ customParams.proxyName.Direct }}

# 本地网络直连
RULE-SET,LAN,{{ customParams.proxyName.Direct }}

# GEOIP数据库内国内IP-直连
# GEOIP,CN,{{ customParams.proxyName.Direct }}

# ASN China
RULE-SET,https://raw.githubusercontent.com/VirgilClyne/GetSomeFries/main/ruleset/ASN.China.list ,{{ customParams.proxyName.Direct }}

# 以上规则未包含的其他访问
FINAL,{{ customParams.proxyName.Final }},dns-failed
