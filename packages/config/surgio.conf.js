'use strict'

const { utils } = require('surgio')
const proxyName = require('./constant/proxyName')
const defaultSelect = require('./constant/defaultSelect')

/**
 * 使用文档：https://surgio.js.org/
 */
module.exports = {
  /**
   * 远程片段
   * 文档：https://surgio.js.org/guide/custom-config.html#remotesnippets
   */
  remoteSnippets: [],
  customFilters: {
    allFilter: config => config,
    noneFilter: () => [],
    otherSelectFilter: utils.discardKeywords(['🇭🇰', '🇨🇳', '🇯🇵', '🇰🇷', '🇸🇬', '🇺🇸']),
  },
  artifacts: [
    /**
     * Surge
     */
    {
      name: 'Surge_pro.conf',
      template: 'surge_v5',
      provider: 'demo',
      combineProviders: [],
      customParams: {
        proxyName,
        allSelect: defaultSelect.getAllSelect('surge'),
        allIncludeGroup: defaultSelect.getAllIncludeGroup('surge'),
      },
    },

    /**
     * Clash
     */
    {
      name: 'config.yaml',
      template: 'clash',
      provider: 'demo',
      combineProviders: [],
      customParams: {
        proxyName,
        dns: true,
        secret: 'thisisyoursecret',
        authentication: ['xiaokang:xiaokang666'],
        allSelect: defaultSelect.getAllSelect('clash'),
      },
    },
    {
      name: 'config_local_combine.yaml',
      template: 'clash',
      provider: 'demo',
      combineProviders: [],
      customParams: {
        proxyName,
        dns: true,
        allSelect: defaultSelect.getAllSelect('clash'),
      },
    },

    /**
     * Loon
     */
    {
      name: 'Loon.conf',
      template: 'loon',
      provider: 'demo',
      combineProviders: [],
      customParams: {
        proxyName,
        allSelect: defaultSelect.getAllSelect('loon'),
        allIncludeGroup: defaultSelect.getAllIncludeGroup('loon'),
      },
    },

    /**
     * TODO: Quantumult X
     */

    /**
     * TODO: Shadowrocket
     */
  ],
  /**
   * 订阅地址的前缀部分，以 / 结尾
   * 例如阿里云 OSS 的访问地址 https://xxx.oss-cn-hangzhou.aliyuncs.com/
   */
  urlBase: '',
  upload: {
    // 默认保存至根目录，可以在此修改子目录名，以 / 结尾，默认为 /
    prefix: '/',
    bucket: '',
    // 支持所有区域
    region: '',
    // 以下信息于阿里云控制台获得
    accessKeyId: '',
    accessKeySecret: '',
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
    '🇱🇺': '卢森堡',
    '🇵🇹': '葡萄牙',
    '🇰🇿': '哈萨克斯坦',
    '🇳🇬': '尼日利亚',
  },
}
