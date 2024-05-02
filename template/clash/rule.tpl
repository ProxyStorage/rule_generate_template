- DOMAIN,injections.adguard.org,DIRECT
- RULE-SET,direct_domain,{{ customParams.proxyName.Direct }}
- RULE-SET,direct_no_ip,{{ customParams.proxyName.Direct }}
- RULE-SET,reject_domain,{{ customParams.proxyName.Reject }}
- RULE-SET,reject_plus_domain,{{ customParams.proxyName.Reject }}
- RULE-SET,wechat_domain,DIRECT
- RULE-SET,bilibili_domain,{{ customParams.proxyName.BiliBili }}
- RULE-SET,CCDN_domain,{{ customParams.proxyName.CCDN }}
- RULE-SET,ai_domain,{{ customParams.proxyName.OpenAI }}
- RULE-SET,notion_domain,{{ customParams.proxyName.Notion }}
- RULE-SET,google_domain,{{ customParams.proxyName.Google }}
- RULE-SET,microsoft_domain,{{ customParams.proxyName.Microsoft }}
- RULE-SET,tiktok_domain,{{ customParams.proxyName.TikTok }}
- RULE-SET,1passwordUS_domain,{{ customParams.proxyName.AmericanSelect }}
- RULE-SET,stream_domain,{{ customParams.proxyName.Emby }}
- RULE-SET,stream_us_domain,{{ customParams.proxyName.AmericanSelect }}
- RULE-SET,stream_jp_domain,{{ customParams.proxyName.JapanSelect }}
- RULE-SET,stream_kr_domain,{{ customParams.proxyName.KoreaSelect }}
- RULE-SET,stream_hk_domain,{{ customParams.proxyName.HongKongSelect }}
- RULE-SET,stream_tw_domain,{{ customParams.proxyName.TaiWanSelect }}
- RULE-SET,stream_eu_domain,{{ customParams.proxyName.OtherSelect }}
- RULE-SET,developer_domain,{{ customParams.proxyName.Developer }}
- RULE-SET,speedtest_domain,{{ customParams.proxyName.SpeedTest }}
- RULE-SET,GCDN_domain,{{ customParams.proxyName.GCDN }}
- RULE-SET,global_domain,{{ customParams.proxyName.Proxy }}
- RULE-SET,domestic_domain,{{ customParams.proxyName.Direct }}
- RULE-SET,reject_drop_no_ip_rule,REJECT-DROP
- RULE-SET,reject_plus_no_ip_rule,{{ customParams.proxyName.Reject }}
- RULE-SET,wechat_no_ip_rule,DIRECT

{% if customParams.PRIVATE_GIST_ID %}
- RULE-SET,my_direct,{{ customParams.proxyName.Direct }}
{% endif %}

- RULE-SET,bilibili_no_ip_rule,{{ customParams.proxyName.BiliBili }}

{% if customParams.PRIVATE_GIST_ID_COMPANY %}
- RULE-SET,company_rules,{{ customParams.proxyName.Company }}
{% endif %}

- RULE-SET,CCDN_no_ip_rule,{{ customParams.proxyName.CCDN }}
- RULE-SET,coze_no_ip_rule,{{ customParams.proxyName.Coze }}
- RULE-SET,ai_no_ip_rule,{{ customParams.proxyName.OpenAI }}
- RULE-SET,notion_no_ip_rule,{{ customParams.proxyName.Notion }}
- RULE-SET,google_no_ip_rule,{{ customParams.proxyName.Google }}
- RULE-SET,microsoft_no_ip_rule,{{ customParams.proxyName.Microsoft }}
- RULE-SET,tiktok_no_ip_rule,{{ customParams.proxyName.TikTok }}
- RULE-SET,1passwordUS_no_ip_rule,{{ customParams.proxyName.AmericanSelect }}

{% if customParams.PRIVATE_GIST_ID %}
- RULE-SET,performance,{{ customParams.proxyName.Performance }}
- RULE-SET,emby,{{ customParams.proxyName.Emby }}
{% endif %}

- RULE-SET,stream_no_ip_rule,{{ customParams.proxyName.Emby }}
- RULE-SET,stream_us_no_ip_rule,{{ customParams.proxyName.AmericanSelect }}
- RULE-SET,stream_jp_no_ip_rule,{{ customParams.proxyName.JapanSelect }}
- RULE-SET,stream_kr_no_ip_rule,{{ customParams.proxyName.KoreaSelect }}
- RULE-SET,stream_hk_no_ip_rule,{{ customParams.proxyName.HongKongSelect }}
- RULE-SET,stream_tw_no_ip_rule,{{ customParams.proxyName.TaiWanSelect }}
- RULE-SET,stream_eu_no_ip_rule,{{ customParams.proxyName.OtherSelect }}
- RULE-SET,developer_no_ip_rule,{{ customParams.proxyName.Developer }}
- RULE-SET,speedtest_no_ip_rule,{{ customParams.proxyName.SpeedTest }}
- RULE-SET,GCDN_no_ip_rule,{{ customParams.proxyName.GCDN }}
- RULE-SET,global_no_ip_rule,{{ customParams.proxyName.Proxy }}
- RULE-SET,domestic_no_ip_rule,{{ customParams.proxyName.Direct }}
- RULE-SET,reject_plus_ip_rule,{{ customParams.proxyName.Reject }}
- RULE-SET,wechat_ip_rule,DIRECT
- RULE-SET,bilibili_ip_rule,{{ customParams.proxyName.BiliBili }}
- RULE-SET,CCDN_ip_rule,{{ customParams.proxyName.CCDN }}
- RULE-SET,ai_ip_rule,{{ customParams.proxyName.OpenAI }}
- RULE-SET,notion_ip_rule,{{ customParams.proxyName.Notion }}
- RULE-SET,google_ip_rule,{{ customParams.proxyName.Google }}
- RULE-SET,telegram_ip_rule,{{ customParams.proxyName.Telegram }}
- RULE-SET,microsoft_ip_rule,{{ customParams.proxyName.Microsoft }}
- RULE-SET,tiktok_ip_rule,{{ customParams.proxyName.TikTok }}
- RULE-SET,1passwordUS_ip_rule,{{ customParams.proxyName.AmericanSelect }}
- RULE-SET,developer_ip_rule,{{ customParams.proxyName.Developer }}
- RULE-SET,stream_ip_rule,{{ customParams.proxyName.Emby }}
- RULE-SET,stream_us_ip_rule,{{ customParams.proxyName.AmericanSelect }}
- RULE-SET,stream_jp_ip_rule,{{ customParams.proxyName.JapanSelect }}
- RULE-SET,stream_kr_ip_rule,{{ customParams.proxyName.KoreaSelect }}
- RULE-SET,stream_hk_ip_rule,{{ customParams.proxyName.HongKongSelect }}
- RULE-SET,stream_tw_ip_rule,{{ customParams.proxyName.TaiWanSelect }}
- RULE-SET,stream_eu_ip_rule,{{ customParams.proxyName.OtherSelect }}
- RULE-SET,speedtest_ip_rule,{{ customParams.proxyName.SpeedTest }}
- RULE-SET,GCDN_ip_rule,{{ customParams.proxyName.GCDN }}
- RULE-SET,global_ip_rule,{{ customParams.proxyName.Proxy }}
- RULE-SET,domestic_ip_rule,{{ customParams.proxyName.Direct }}
- GEOIP,LAN,DIRECT
- GEOIP,CN,{{ customParams.proxyName.Direct }}
- MATCH,{{ customParams.proxyName.Final }}
