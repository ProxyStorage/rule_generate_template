const { PRIVATE_GIST_ID, PRIVATE_GIST_ID_COMPANY } = require('../../constant/config')
const proxyName = require('../../constant/proxyName')

function generateRuleUrl(folder, fileName, platform = 'surge') {
  return `https://rule.acs.pw/${platform}/rule/${folder}/${fileName}.list`
}

function getRuleList(platform = 'surge') {
  return {
    // 白名单（主要是不应该被代理的一些规则）
    white: [
      {
        files: {
          domain: generateRuleUrl('direct', 'direct_domain', platform),
          noIp: generateRuleUrl('direct', 'direct_no_ip_rule', platform),
          ip: generateRuleUrl('direct', 'direct_ip_rule', platform),
          asn: generateRuleUrl('direct', 'direct_ip_asn_rule', platform),
        },
        proxyName: 'DIRECT',
      },
      {
        files: {
          domain: '',
          noIp: `https://rule.acs.pw/${platform}/rule/direct/direct_process_name.list`,
          ip: '',
        },
        proxyName: 'DIRECT',
        onlyPc: true,
      },
    ],
    // 黑名单 （主要是去广告之类的规则）
    black: [
      {
        files: {
          domain: generateRuleUrl('reject_tinygif', 'reject_tinygif_domain', platform),
          noIp: generateRuleUrl('reject_tinygif', 'reject_tinygif_no_ip_rule', platform),
          ip: generateRuleUrl('reject_tinygif', 'reject_tinygif_ip_rule', platform),
          asn: generateRuleUrl('reject_tinygif', 'reject_tinygif_ip_asn_rule', platform),
        },
        proxyName: platform === 'clash' ? proxyName.Reject : 'REJECT-TINYGIF',
      },
      {
        files: {
          domain: generateRuleUrl('reject_drop', 'reject_drop_domain', platform),
          noIp: generateRuleUrl('reject_drop', 'reject_drop_no_ip_rule', platform),
          ip: generateRuleUrl('reject_drop', 'reject_drop_ip_rule', platform),
          asn: generateRuleUrl('reject_drop', 'reject_drop_ip_asn_rule', platform),
        },
        proxyName: platform === 'clash' ? proxyName.Reject : 'REJECT-DROP',
      },

      {
        files: {
          domain: generateRuleUrl('reject_plus', 'reject_plus_domain', platform),
          noIp: generateRuleUrl('reject_plus', 'reject_plus_no_ip_rule', platform),
          ip: generateRuleUrl('reject_plus', 'reject_plus_ip_rule', platform),
          asn: generateRuleUrl('reject_plus', 'reject_plus_ip_asn_rule', platform),
        },
        after: 'AND,((PROTOCOL,UDP), (DEST-PORT,443)),REJECT-NO-DROP',
        proxyName: proxyName.Reject,
      },
    ],
    // 一些国内 APP 的配置（用于 APP 软件分流）
    domesticApp: [

      PRIVATE_GIST_ID && {
        files: {
          domain: '',
          noIp: `https://gist.githubusercontent.com/${PRIVATE_GIST_ID}/raw/direct`,
          ip: '',
        },
        proxyName: proxyName.Direct,
      },
      {
        files: {
          domain: generateRuleUrl('wechat', 'wechat_domain', platform),
          noIp: generateRuleUrl('wechat', 'wechat_no_ip_rule', platform),
          ip: generateRuleUrl('wechat', 'wechat_ip_rule', platform),
          asn: generateRuleUrl('wechat', 'wechat_ip_asn_rule', platform),
        },
        proxyName: proxyName.Direct,
      },
      {
        files: {
          domain: generateRuleUrl('bilibili', 'bilibili_domain', platform),
          noIp: generateRuleUrl('bilibili', 'bilibili_no_ip_rule', platform),
          ip: generateRuleUrl('bilibili', 'bilibili_ip_rule', platform),
          asn: generateRuleUrl('bilibili', 'bilibili_ip_asn_rule', platform),
        },
        proxyName: proxyName.BiliBili,
      },
      PRIVATE_GIST_ID_COMPANY && {
        files: {
          domain: '',
          noIp: `https://gist.githubusercontent.com/${PRIVATE_GIST_ID_COMPANY}/raw/jescard`,
          ip: '',
        },
        proxyName: proxyName.Company,
      },
      {
        files: {
          domain: generateRuleUrl('CCDN', 'CCDN_domain', platform),
          noIp: generateRuleUrl('CCDN', 'CCDN_no_ip_rule', platform),
          ip: generateRuleUrl('CCDN', 'CCDN_ip_rule', platform),
          asn: generateRuleUrl('CCDN', 'CCDN_ip_asn_rule', platform),
        },
        proxyName: proxyName.CCDN,
      },
      {
        files: {
          domain: generateRuleUrl('domestic', 'domestic_domain', platform),
          noIp: generateRuleUrl('domestic', 'domestic_no_ip_rule', platform),
          ip: generateRuleUrl('domestic', 'domestic_ip_rule', platform),
          asn: generateRuleUrl('domestic', 'domestic_ip_asn_rule', platform),
        },
        proxyName: proxyName.Direct,
      },
    ],
    // 一些国外 APP 的配置（用于 APP 软件分流）
    globalApp: [
      {
        files: {
          domain: generateRuleUrl('coze', 'coze_domain', platform),
          noIp: generateRuleUrl('coze', 'coze_no_ip_rule', platform),
          ip: generateRuleUrl('coze', 'coze_ip_rule', platform),
          asn: generateRuleUrl('coze', 'coze_ip_asn_rule', platform),
        },
        proxyName: proxyName.Coze,
      },
      {
        files: {
          domain: generateRuleUrl('ai', 'ai_domain', platform),
          noIp: generateRuleUrl('ai', 'ai_no_ip_rule', platform),
          ip: generateRuleUrl('ai', 'ai_ip_rule', platform),
          asn: generateRuleUrl('ai', 'ai_ip_asn_rule', platform),

        },
        proxyName: proxyName.OpenAI,
      },
      {
        files: {
          domain: generateRuleUrl('telegram', 'telegram_domain', platform),
          noIp: generateRuleUrl('telegram', 'telegram_no_ip_rule', platform),
          ip: generateRuleUrl('telegram', 'telegram_ip_rule', platform),
          asn: generateRuleUrl('telegram', 'telegram_ip_asn_rule', platform),
        },
        proxyName: proxyName.Telegram,
      },
      {
        files: {
          domain: generateRuleUrl('pikpak', 'pikpak_domain', platform),
          noIp: generateRuleUrl('pikpak', 'pikpak_no_ip_rule', platform),
          ip: generateRuleUrl('pikpak', 'pikpak_ip_rule', platform),
          asn: generateRuleUrl('pikpak', 'pikpak_ip_asn_rule', platform),
        },
        proxyName: proxyName.PikPak,
      },
      {
        files: {
          domain: generateRuleUrl('notion', 'notion_domain', platform),
          noIp: generateRuleUrl('notion', 'notion_no_ip_rule', platform),
          ip: generateRuleUrl('notion', 'notion_ip_rule', platform),
        },
        proxyName: proxyName.Notion,
      },
      {
        files: {
          domain: generateRuleUrl('google', 'google_domain', platform),
          noIp: generateRuleUrl('google', 'google_no_ip_rule', platform),
          ip: generateRuleUrl('google', 'google_ip_rule', platform),
        },
        proxyName: proxyName.Google,
      },

      {
        files: {
          domain: generateRuleUrl('microsoft', 'microsoft_domain', platform),
          noIp: generateRuleUrl('microsoft', 'microsoft_no_ip_rule', platform),
          ip: generateRuleUrl('microsoft', 'microsoft_ip_rule', platform),
        },
        proxyName: proxyName.Microsoft,
      },
      {
        files: {
          domain: generateRuleUrl('tiktok', 'tiktok_domain'),
          noIp: generateRuleUrl('tiktok', 'tiktok_no_ip_rule', platform),
          ip: generateRuleUrl('tiktok', 'tiktok_ip_rule', platform),
        },
        proxyName: proxyName.TikTok,
      },
      {
        files: {
          domain: generateRuleUrl('developer', 'developer_domain', platform),
          noIp: generateRuleUrl('developer', 'developer_no_ip_rule', platform),
          ip: generateRuleUrl('developer', 'developer_ip_rule', platform),
        },
        proxyName: proxyName.Developer,
      },
      {
        files: {
          domain: generateRuleUrl('1passwordUS', '1passwordUS_domain', platform),
          noIp: generateRuleUrl('1passwordUS', '1passwordUS_no_ip_rule', platform),
          ip: generateRuleUrl('1passwordUS', '1passwordUS_ip_rule', platform),
        },
        proxyName: proxyName.AmericanSelect,
      },
      PRIVATE_GIST_ID && {
        files: {
          domain: '',
          noIp: `https://gist.githubusercontent.com/${PRIVATE_GIST_ID}/raw/performance`,
          ip: '',
        },
        proxyName: proxyName.Performance,
      },
      PRIVATE_GIST_ID && {
        files: {
          domain: '',
          noIp: `https://gist.githubusercontent.com/${PRIVATE_GIST_ID}/raw/emby`,
          ip: '',
        },
        proxyName: proxyName.Emby,
      },
      {
        files: {
          domain: generateRuleUrl('GCDN', 'GCDN_domain', platform),
          noIp: generateRuleUrl('GCDN', 'GCDN_no_ip_rule', platform),
          ip: generateRuleUrl('GCDN', 'GCDN_ip_rule', platform),
        },
        proxyName: proxyName.GCDN,
      },
      {
        files: {
          domain: generateRuleUrl('stream', 'stream_domain', platform),
          noIp: generateRuleUrl('stream', 'stream_no_ip_rule', platform),
          ip: generateRuleUrl('stream', 'stream_ip_rule', platform),
        },
        proxyName: proxyName.Emby,
      },
      {
        files: {
          domain: generateRuleUrl('stream_us', 'stream_us_domain', platform),
          noIp: generateRuleUrl('stream_us', 'stream_us_no_ip_rule', platform),
          ip: generateRuleUrl('stream_us', 'stream_us_ip_rule', platform),
        },
        proxyName: proxyName.AmericanSelect,
      },
      {
        files: {
          domain: generateRuleUrl('stream_jp', 'stream_jp_domain', platform),
          noIp: generateRuleUrl('stream_jp', 'stream_jp_no_ip_rule', platform),
          ip: generateRuleUrl('stream_jp', 'stream_jp_ip_rule', platform),
        },
        proxyName: proxyName.JapanSelect,
      },
      {
        files: {
          domain: generateRuleUrl('stream_kr', 'stream_kr_domain', platform),
          noIp: generateRuleUrl('stream_kr', 'stream_kr_no_ip_rule', platform),
          ip: generateRuleUrl('stream_kr', 'stream_kr_ip_rule', platform),
        },
        proxyName: proxyName.KoreaSelect,
      },
      {
        files: {
          domain: generateRuleUrl('stream_hk', 'stream_hk_domain', platform),
          noIp: generateRuleUrl('stream_hk', 'stream_hk_no_ip_rule', platform),
          ip: generateRuleUrl('stream_hk', 'stream_hk_ip_rule', platform),
        },
        proxyName: proxyName.HongKongSelect,
      },
      {
        files: {
          domain: generateRuleUrl('stream_tw', 'stream_tw_domain', platform),
          noIp: generateRuleUrl('stream_tw', 'stream_tw_no_ip_rule', platform),
          ip: generateRuleUrl('stream_tw', 'stream_tw_ip_rule', platform),
        },
        proxyName: proxyName.TaiWanSelect,
      },
      {
        files: {
          domain: generateRuleUrl('stream_eu', 'stream_eu_domain', platform),
          noIp: generateRuleUrl('stream_eu', 'stream_eu_no_ip_rule', platform),
          ip: generateRuleUrl('stream_eu', 'stream_eu_ip_rule', platform),
        },
        proxyName: proxyName.EuropeSelect,
      },
      {
        files: {
          domain: generateRuleUrl('speedtest', 'speedtest_domain', platform),
          noIp: generateRuleUrl('speedtest', 'speedtest_no_ip_rule', platform),
          ip: generateRuleUrl('speedtest', 'speedtest_ip_rule', platform),
        },
        proxyName: proxyName.SpeedTest,
      },

      {
        files: {
          domain: generateRuleUrl('global', 'global_domain', platform),
          noIp: generateRuleUrl('global', 'global_no_ip_rule', platform),
          ip: generateRuleUrl('global', 'global_ip_rule', platform),
        },
        proxyName: proxyName.Proxy,
      },

    ],

  }
}
const blackProxyName = [
  proxyName.Proxy,
  proxyName.Select,
  proxyName.Direct,
  proxyName.Reject,
  proxyName.Final,
  proxyName.AmericanSelect,
  proxyName.JapanSelect,
  proxyName.KoreaSelect,
  proxyName.HongKongSelect,
  proxyName.TaiWanSelect,
  proxyName.EuropeSelect,
  proxyName.SingaporeSelect,
  proxyName.OtherSelect,
  proxyName.CCDN,
  proxyName.GCDN,
  'REJECT-TINYGIF',
  'REJECT-DROP',
  'DIRECT',
  'REJECT',
]
module.exports = { getRuleList, blackProxyName }
