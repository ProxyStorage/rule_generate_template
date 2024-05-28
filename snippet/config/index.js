const proxyNameConfig = require('../../constant/proxyNameConfig')
const { PRIVATE_GIST_ID, PRIVATE_GIST_ID_COMPANY } = require('../../constant/env')

function generateRuleUrl(folder, fileName, platform = 'surge') {
  return `https://rule.acs.pw/${platform}/rule/${folder}/${fileName}.list`
}

function getRuleConfig(
  isPc = true,
  platform = 'surge',
  options = { privateGistId: PRIVATE_GIST_ID, privateGistIdCompany: PRIVATE_GIST_ID_COMPANY },
) {
  const { privateGistId, privateGistIdCompany } = options

  return [
    {
      proxyName: 'DIRECT',
      rule: {
        domain: generateRuleUrl('direct', 'direct_domain', platform),
        noIp: generateRuleUrl('direct', 'direct_no_ip_rule', platform),
        ip: generateRuleUrl('direct', 'direct_ip_rule', platform),
        asn: generateRuleUrl('direct', 'direct_ip_asn_rule', platform),
        after: [], // 添加在该规则之后的其他规则
        before: [], // 添加在该规则之前的其他规则
      },
    },
    isPc && {
      proxyName: 'DIRECT',
      rule: {
        domain: '',
        noIp: `https://rule.acs.pw/${platform}/rule/direct/direct_process_name.list`,
        ip: '',
      },
    },

    {
      proxyName: platform === 'clash' ? proxyNameConfig.Reject.name : (platform === 'loon' ? 'REJECT-IMG' : 'REJECT-TINYGIF'),
      rule: {
        domain: generateRuleUrl('reject_tinygif', 'reject_tinygif_domain', platform),
        noIp: generateRuleUrl('reject_tinygif', 'reject_tinygif_no_ip_rule', platform),
        ip: generateRuleUrl('reject_tinygif', 'reject_tinygif_ip_rule', platform),
        asn: generateRuleUrl('reject_tinygif', 'reject_tinygif_ip_asn_rule', platform),
      },
    },
    {
      proxyName: platform === 'clash' ? proxyNameConfig.Reject.name : 'REJECT-DROP',
      rule: {
        domain: generateRuleUrl('reject_drop', 'reject_drop_domain', platform),
        noIp: generateRuleUrl('reject_drop', 'reject_drop_no_ip_rule', platform),
        ip: generateRuleUrl('reject_drop', 'reject_drop_ip_rule', platform),
        asn: generateRuleUrl('reject_drop', 'reject_drop_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Reject.name,
      rule: {
        domain: generateRuleUrl('reject_plus', 'reject_plus_domain', platform),
        noIp: generateRuleUrl('reject_plus', 'reject_plus_no_ip_rule', platform),
        ip: generateRuleUrl('reject_plus', 'reject_plus_ip_rule', platform),
        asn: generateRuleUrl('reject_plus', 'reject_plus_ip_asn_rule', platform),
        after: ['AND,((PROTOCOL,UDP), (DEST-PORT,443)),REJECT-NO-DROP'],
      },
    },
    privateGistId && {
      proxyName: proxyNameConfig.Direct.name,
      rule: {
        domain: '',
        noIp: `https://gist.githubusercontent.com/${privateGistId}/raw/direct`,
        ip: '',
      },
    },
    {
      proxyName: proxyNameConfig.Direct.name,
      rule: {
        domain: generateRuleUrl('wechat', 'wechat_domain', platform),
        noIp: generateRuleUrl('wechat', 'wechat_no_ip_rule', platform),
        ip: generateRuleUrl('wechat', 'wechat_ip_rule', platform),
        asn: generateRuleUrl('wechat', 'wechat_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.BiliBili.name,
      rule: {
        domain: generateRuleUrl('bilibili', 'bilibili_domain', platform),
        noIp: generateRuleUrl('bilibili', 'bilibili_no_ip_rule', platform),
        ip: generateRuleUrl('bilibili', 'bilibili_ip_rule', platform),
        asn: generateRuleUrl('bilibili', 'bilibili_ip_asn_rule', platform),
        after: [], // 添加在该规则之后的其他规则
        before: [], // 添加在该规则之前的其他规则
      },
    },

    privateGistIdCompany && {
      proxyName: proxyNameConfig.Company.name,
      rule: {
        domain: '',
        noIp: `https://gist.githubusercontent.com/${privateGistIdCompany}/raw/jescard`,
        ip: '',
      },
    },
    {
      proxyName: proxyNameConfig.CCDN.name,
      rule: {
        domain: generateRuleUrl('CCDN', 'CCDN_domain', platform),
        noIp: generateRuleUrl('CCDN', 'CCDN_no_ip_rule', platform),
        ip: generateRuleUrl('CCDN', 'CCDN_ip_rule', platform),
        asn: generateRuleUrl('CCDN', 'CCDN_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Direct.name,
      rule: {
        domain: generateRuleUrl('domestic', 'domestic_domain', platform),
        noIp: generateRuleUrl('domestic', 'domestic_no_ip_rule', platform),
        ip: generateRuleUrl('domestic', 'domestic_ip_rule', platform),
        asn: generateRuleUrl('domestic', 'domestic_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Direct.name,
      rule: {
        domain: generateRuleUrl('github', 'github_domain', platform),
        noIp: generateRuleUrl('github', 'github_no_ip_rule', platform),
        ip: generateRuleUrl('github', 'github_ip_rule', platform),
        asn: generateRuleUrl('github', 'github_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.Coze.name,
      rule: {
        domain: generateRuleUrl('coze', 'coze_domain', platform),
        noIp: generateRuleUrl('coze', 'coze_no_ip_rule', platform),
        ip: generateRuleUrl('coze', 'coze_ip_rule', platform),
        asn: generateRuleUrl('coze', 'coze_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.OpenAI.name,
      rule: {
        domain: generateRuleUrl('ai', 'ai_domain', platform),
        noIp: generateRuleUrl('ai', 'ai_no_ip_rule', platform),
        ip: generateRuleUrl('ai', 'ai_ip_rule', platform),
        asn: generateRuleUrl('ai', 'ai_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Telegram.name,
      rule: {
        domain: generateRuleUrl('telegram', 'telegram_domain', platform),
        noIp: generateRuleUrl('telegram', 'telegram_no_ip_rule', platform),
        ip: generateRuleUrl('telegram', 'telegram_ip_rule', platform),
        asn: generateRuleUrl('telegram', 'telegram_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.PikPak.name,
      rule: {
        domain: generateRuleUrl('pikpak', 'pikpak_domain', platform),
        noIp: generateRuleUrl('pikpak', 'pikpak_no_ip_rule', platform),
        ip: generateRuleUrl('pikpak', 'pikpak_ip_rule', platform),
        asn: generateRuleUrl('pikpak', 'pikpak_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.Notion.name,
      rule: {
        domain: generateRuleUrl('notion', 'notion_domain', platform),
        noIp: generateRuleUrl('notion', 'notion_no_ip_rule', platform),
        ip: generateRuleUrl('notion', 'notion_ip_rule', platform),
        asn: generateRuleUrl('notion', 'notion_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.Google.name,
      rule: {
        domain: generateRuleUrl('google', 'google_domain', platform),
        noIp: generateRuleUrl('google', 'google_no_ip_rule', platform),
        ip: generateRuleUrl('google', 'google_ip_rule', platform),
        asn: generateRuleUrl('google', 'google_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Microsoft.name,
      rule: {
        domain: generateRuleUrl('microsoft', 'microsoft_domain', platform),
        noIp: generateRuleUrl('microsoft', 'microsoft_no_ip_rule', platform),
        ip: generateRuleUrl('microsoft', 'microsoft_ip_rule', platform),
        asn: generateRuleUrl('microsoft', 'microsoft_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.TikTok.name,
      rule: {
        domain: generateRuleUrl('tiktok', 'tiktok_domain'),
        noIp: generateRuleUrl('tiktok', 'tiktok_no_ip_rule', platform),
        ip: generateRuleUrl('tiktok', 'tiktok_ip_rule', platform),
        asn: generateRuleUrl('tiktok', 'tiktok_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Developer.name,
      rule: {
        domain: generateRuleUrl('github', 'github_domain', platform),
        noIp: generateRuleUrl('github', 'github_no_ip_rule', platform),
        ip: generateRuleUrl('github', 'github_ip_rule', platform),
        asn: generateRuleUrl('github', 'github_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Developer.name,
      rule: {
        domain: generateRuleUrl('developer', 'developer_domain', platform),
        noIp: generateRuleUrl('developer', 'developer_no_ip_rule', platform),
        ip: generateRuleUrl('developer', 'developer_ip_rule', platform),
        asn: generateRuleUrl('developer', 'developer_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.AmericanSelect.name,
      rule: {
        domain: generateRuleUrl('1passwordUS', '1passwordUS_domain', platform),
        noIp: generateRuleUrl('1passwordUS', '1passwordUS_no_ip_rule', platform),
        ip: generateRuleUrl('1passwordUS', '1passwordUS_ip_rule', platform),
        asn: generateRuleUrl('1passwordUS', '1passwordUS_ip_asn_rule', platform),
      },
    },
    privateGistId && {
      proxyName: proxyNameConfig.Performance.name,
      rule: {
        domain: '',
        noIp: `https://gist.githubusercontent.com/${privateGistId}/raw/performance`,
        ip: '',
      },
    },
    privateGistId && {
      proxyName: proxyNameConfig.Emby.name,
      rule: {
        domain: '',
        noIp: `https://gist.githubusercontent.com/${privateGistId}/raw/emby`,
        ip: '',
      },
    },
    {
      proxyName: proxyNameConfig.GCDN.name,
      rule: {
        domain: generateRuleUrl('GCDN', 'GCDN_domain', platform),
        noIp: generateRuleUrl('GCDN', 'GCDN_no_ip_rule', platform),
        ip: generateRuleUrl('GCDN', 'GCDN_ip_rule', platform),
        asn: generateRuleUrl('GCDN', 'GCDN_ip_asn_rule', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Spotify.name,
      rule: {
        domain: generateRuleUrl('spotify', 'spotify_domain', platform),
        noIp: generateRuleUrl('spotify', 'spotify_no_ip_rule', platform),
        ip: generateRuleUrl('spotify', 'spotify_ip_rule', platform),
        asn: generateRuleUrl('spotify', 'spotify_ip_asn_rule', platform),
        processName: generateRuleUrl('spotify', 'spotify_process_name', platform),
      },
    },
    {
      proxyName: proxyNameConfig.Emby.name,
      rule: {
        domain: generateRuleUrl('stream', 'stream_domain', platform),
        noIp: generateRuleUrl('stream', 'stream_no_ip_rule', platform),
        ip: generateRuleUrl('stream', 'stream_ip_rule', platform),
        asn: generateRuleUrl('stream', 'stream_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.AmericanSelect.name,
      rule: {
        domain: generateRuleUrl('stream_us', 'stream_us_domain', platform),
        noIp: generateRuleUrl('stream_us', 'stream_us_no_ip_rule', platform),
        ip: generateRuleUrl('stream_us', 'stream_us_ip_rule', platform),
        asn: generateRuleUrl('stream_us', 'stream_us_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.JapanSelect.name,
      rule: {
        domain: generateRuleUrl('stream_jp', 'stream_jp_domain', platform),
        noIp: generateRuleUrl('stream_jp', 'stream_jp_no_ip_rule', platform),
        ip: generateRuleUrl('stream_jp', 'stream_jp_ip_rule', platform),
        asn: generateRuleUrl('stream_jp', 'stream_jp_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.KoreaSelect.name,
      rule: {
        domain: generateRuleUrl('stream_kr', 'stream_kr_domain', platform),
        noIp: generateRuleUrl('stream_kr', 'stream_kr_no_ip_rule', platform),
        ip: generateRuleUrl('stream_kr', 'stream_kr_ip_rule', platform),
        asn: generateRuleUrl('stream_kr', 'stream_kr_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.HongKongSelect.name,
      rule: {
        domain: generateRuleUrl('stream_hk', 'stream_hk_domain', platform),
        noIp: generateRuleUrl('stream_hk', 'stream_hk_no_ip_rule', platform),
        ip: generateRuleUrl('stream_hk', 'stream_hk_ip_rule', platform),
        asn: generateRuleUrl('stream_hk', 'stream_hk_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.TaiWanSelect.name,
      rule: {
        domain: generateRuleUrl('stream_tw', 'stream_tw_domain', platform),
        noIp: generateRuleUrl('stream_tw', 'stream_tw_no_ip_rule', platform),
        ip: generateRuleUrl('stream_tw', 'stream_tw_ip_rule', platform),
        asn: generateRuleUrl('stream_tw', 'stream_tw_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.EuropeSelect.name,
      rule: {
        domain: generateRuleUrl('stream_eu', 'stream_eu_domain', platform),
        noIp: generateRuleUrl('stream_eu', 'stream_eu_no_ip_rule', platform),
        ip: generateRuleUrl('stream_eu', 'stream_eu_ip_rule', platform),
        asn: generateRuleUrl('stream_eu', 'stream_eu_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.SpeedTest.name,
      rule: {
        domain: generateRuleUrl('speedtest', 'speedtest_domain', platform),
        noIp: generateRuleUrl('speedtest', 'speedtest_no_ip_rule', platform),
        ip: generateRuleUrl('speedtest', 'speedtest_ip_rule', platform),
        asn: generateRuleUrl('speedtest', 'speedtest_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.Proxy.name,
      rule: {
        domain: generateRuleUrl('global', 'global_domain', platform),
        noIp: generateRuleUrl('global', 'global_no_ip_rule', platform),
        ip: generateRuleUrl('global', 'global_ip_rule', platform),
        asn: generateRuleUrl('global', 'global_ip_asn_rule', platform),
      },
    },

    {
      proxyName: proxyNameConfig.Warp.name,
    },

    {
      proxyName: proxyNameConfig.Final.name,
    },

    {
      proxyName: proxyNameConfig.SubNodesSelect.name,
    },
    {
      proxyName: proxyNameConfig.SingaporeSelect.name,
    },
    {
      proxyName: proxyNameConfig.OtherSelect.name,
    },
    {
      proxyName: proxyNameConfig.LowMagnification.name,
    },
  ]
}

function getConfig(isPc = true, platform = 'surge') {
  const blackProxyName = ['REJECT-TINYGIF', 'REJECT-IMG', 'REJECT-DROP', 'DIRECT', 'REJECT']
  const proxyNameMap = new Map()
  const domainRuleList = []
  const noIPRuleList = []
  const ipRuleList = []
  const asnRuleList = []
  const config = getRuleConfig(isPc, platform)
  for (let i = 0; i < config.length; i++) {
    const configItem = config[i]
    if (!blackProxyName.includes(configItem.proxyName) && !proxyNameConfig[configItem.proxyName]) {
      const staticDataIndex = Object.values(proxyNameConfig).findIndex(val => val.name === configItem.proxyName)
      const key = Object.keys(proxyNameConfig)[staticDataIndex]
      if (key) {
        proxyNameMap.set(Object.keys(proxyNameConfig)[staticDataIndex], {
          // originName: Object.keys(proxyNameConfig)[staticDataIndex],
          name: configItem.proxyName,
          sort: staticDataIndex,
          proxyOptions: Object.values(proxyNameConfig)[staticDataIndex]?.proxyOptions || {},
        })
      }
    }
    if (configItem?.rule?.domain)
      domainRuleList.push(`DOMAIN-SET,${configItem.rule.domain},${configItem.proxyName}`)
    if (configItem?.rule?.noIp)
      noIPRuleList.push(`RULE-SET,${configItem.rule.noIp},${configItem.proxyName}`)
    if (configItem?.rule?.ip)
      ipRuleList.push(`RULE-SET,${configItem.rule.ip},${configItem.proxyName}`)
    if (configItem?.rule?.asn && platform !== 'clash')
      asnRuleList.push(`RULE-SET,${configItem.rule.asn},${configItem.proxyName}`)
  }
  const proxyGroupList = []

  const proxyNameList = []
  const proxyName = {}
  proxyNameMap.forEach((item, key) => {
    proxyNameList.push({
      proxyName: item.name,
      sort: item.sort,
      proxyOptions: item.proxyOptions,
    })
    proxyName[key] = item.name
  })
  proxyNameList.sort((a, b) => a.sort - b.sort)
  proxyNameList.forEach((proxy) => {
    proxyGroupList.push({ proxyName: proxy.proxyName, proxyOptions: proxy.proxyOptions })
  })

  return { domainRuleList, noIPRuleList, ipRuleList, asnRuleList, proxyGroupList, proxyName }
}

module.exports = { getConfig }
