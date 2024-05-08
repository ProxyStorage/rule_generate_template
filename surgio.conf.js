'use strict'

const { utils } = require('surgio')
const { getSurgeConfig, getClashConfig, getLoonConfig } = require('./utils/getCustomParams')

const {
  SURGIO_URL_BASE,
  SURGIP_UPLOAD_PREFIX,
  SURGIP_UPLOAD_BUCKET,
  SURGIO_UPLOAD_REGION,
  SURGIP_UPLOAD_ACCESS_KEY_ID,
  SURGIP_UPLOAD_ACCESS_KEY_SECRET,
} = require('./constant/env')

// const surgeSnippet = surgeSnippet( getAllSelect('surge'),getAllIncludeGroup('surge'))

/**
 * 使用文档：https://surgio.js.org/
 */
module.exports = {
  /**
   * 远程片段
   * 文档：https://surgio.js.org/guide/custom-config.html#remotesnippets
   */
  remoteSnippets: [
    {
      url: 'https://rule.acs.pw/clash/surgio/dnsMap.snippet',
      name: 'clashDnsMap', // 模板中对应 remoteSnippets.clashDnsMap
    },
    {
      url: 'https://rule.acs.pw/clash/surgio/dnsMap.hosts.snippet',
      name: 'clashDnsMapHosts', // 模板中对应 remoteSnippets.clashDnsMapHosts
    },
    // {
    //   url: 'https://rule.acs.pw/surge/surgio/disable-host-name.snippet',
    //   name: 'surgeDisableHostName', // 模板中对应 remoteSnippets.surgeDisableHostName
    // },
  ],
  proxyTestUrl: 'http://latency-test.skk.moe/endpoint',
  internetTestUrl: 'http://connectivitycheck.platform.hicloud.com/generate_204',
  customFilters: {
    allFilter: config => config,
    noneFilter: () => [],
    otherSelectFilter: utils.discardKeywords(['流量', 'Traffic', 'Expire', '剩余', '重置', '套餐', '有效', '🇭🇰', '🇨🇳', '🇯🇵', '🇰🇷', '🇸🇬', '🇺🇸', '台湾', '🇹🇼', ...'🇬🇧|英|🇫🇷|法|🇩🇪|德|🇳🇱|荷兰|🇵🇹|葡萄牙|🇪🇸|西班牙|🇺🇦|乌克兰|🇮🇹|意大利|🇷🇺|🇱🇺|卢森堡'.split('|')]),
    europeSelectFilter: utils.useKeywords('🇬🇧|英|🇫🇷|法|🇩🇪|德|🇳🇱|荷兰|🇵🇹|葡萄牙|🇪🇸|西班牙|🇺🇦|乌克兰|🇮🇹|意大利|🇷🇺|🇱🇺|卢森堡'.split('|')),
  },

  artifacts: [
    {
      name: 'Surge_Pro_Mac.conf',
      template: 'surge',
      provider: 'flower',
      combineProviders: ['fishport', 'fishportP', 'error', 'cat'],
      customParams: {
        ...getSurgeConfig(false),
      },
    },
    {
      name: 'Surge_Pro_Mobile.conf',
      template: 'surge',
      provider: 'flower',
      combineProviders: ['fishport', 'fishportP', 'error', 'cat'],
      customParams: {
        ...getSurgeConfig(true),
      },
    },
    {
      name: 'config.yaml',
      template: 'clash',
      provider: 'flower',
      combineProviders: ['fishport', 'fishportP', 'error', 'cat'],
      customParams: {
        ...getClashConfig(),
        secret: 'thisisyoursecret',
        authentication: ['xiaokang:xiaokang666'],
      },
    },
    {
      name: 'config_local_combine.yaml',
      template: 'clash',
      provider: 'flower',
      combineProviders: ['fishport', 'fishportP', 'error', 'cat'],
      customParams: {
        ...getClashConfig(),
      },
    },
    {
      name: 'loon.conf',
      template: 'loon',
      provider: 'demo',
      // combineProviders: ['fishport', 'fishportP', 'error'],
      customParams: {
        ...getLoonConfig(),
      },
    },
  ],
  /**
   * 订阅地址的前缀部分，以 / 结尾
   * 例如阿里云 OSS 的访问地址 https://xxx.oss-cn-hangzhou.aliyuncs.com/
   */
  urlBase: SURGIO_URL_BASE,
  upload: {
    // 默认保存至根目录，可以在此修改子目录名，以 / 结尾，默认为 /
    prefix: SURGIP_UPLOAD_PREFIX,
    bucket: SURGIP_UPLOAD_BUCKET,
    // 支持所有区域
    region: SURGIO_UPLOAD_REGION,
    // 以下信息于阿里云控制台获得
    accessKeyId: SURGIP_UPLOAD_ACCESS_KEY_ID,
    accessKeySecret: SURGIP_UPLOAD_ACCESS_KEY_SECRET,
  },
  gateway: {
    auth: false,
    accessToken: '',
    viewerToken: '',
    useCacheOnError: false,
  },
  // 非常有限的报错信息收集
  analytics: false,
  flags: {
    '🇪🇬': '埃及',
    '🇨🇱': '智利',
    '🇳🇿': '新西兰',
    '🇲🇩': '摩尔多瓦',
    '🇱🇺': ['卢森堡', '袖珍王国'],
    '🇵🇹': '葡萄牙',
    '🇰🇿': '哈萨克斯坦',
    '🇳🇬': '尼日利亚',
    '🇰🇭': '柬埔寨',
    '🇲🇴': ['澳门', '龙牙门'],
    '🇳🇵': ['尼泊尔', '坎提普尔'],
    '🇧🇷': ['巴西', '足球王国'],
    '🇦🇷': ['阿根廷', '潘帕斯雄鹰'],
    '🇹🇷': ['土耳其', '奥斯曼苏丹国'],
  },
}
