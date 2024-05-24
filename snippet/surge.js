/**
 * 生成 surge 的 rule 和 proxyGroup 配置
 */
const { getAllIncludeGroup, getAllSelect } = require('../constant/defaultSelect')
const proxyNameConfig = require('../constant/proxyNameConfig')
const getEncryptDNS = require('../utils/getEncryptDNS')
const { dns } = require('../constant/dns')
const { hostname, disabledHostName } = require('../utils/surgeHostName')
const {
  SURGIO_URL_BASE,
  SURGIP_UPLOAD_PREFIX,
  SURGIP_UPLOAD_BUCKET,
  SURGIO_UPLOAD_REGION,
  SURGIP_UPLOAD_ACCESS_KEY_ID,
  SURGIP_UPLOAD_ACCESS_KEY_SECRET,
  ...rest
} = require('../constant/env')
const { getConfig } = require('./config/index')

/**
 * 生成 surge 的 rule 配置
 * @param {string} name 代理名称
 * @param {object} options 代理配置
 * @returns string
 */
function getProxyGroupConfig(name, options = {}) {
  if (!name)
    return ''
  const config = {
    'type': 'select',
    'policy-group': `${proxyNameConfig.Proxy.name}, ${proxyNameConfig.Direct.name}, ${getAllSelect('surge')}, ${proxyNameConfig.Reject.name}`,
    'no-alert': 0,
    'hidden': 0,
    'include-all-proxies': 0,
    'include-other-group': `"${getAllIncludeGroup('surge')}"`,
    'policy-regex-filter': null,
    'policy-priority': null,
    ...options,
  }

  const { type, ...rest } = config

  const list = []
  list.push(`${name} = ${type}`)
  if (config['policy-group'])
    list.push(`${config['policy-group']}`)

  Object.entries(rest).forEach(([key, value]) => {
    if (!(value === null || ['type', 'policy-group'].includes(key)))
      list.push(`${key}=${value}`)
  })

  return list.join(', ')
}

function getSurgeSnippet(isPc = true, options = {}) {
  const result = getConfig(isPc, 'surge')
  const ruleSnippet = `${result.domainRuleList.join('\n')}\n${result.noIPRuleList.join('\n')}\n${result.ipRuleList.join('\n')}\n${result.asnRuleList.join('\n')}`

  const encrypt_dns_server = getEncryptDNS('surge').join(', ')
  const dns_server = dns.join(', ')

  result.proxyGroupList.forEach((item, index) => {
    result.proxyGroupList[index] = getProxyGroupConfig(item.proxyName, item.proxyOptions)
  })

  return {
    ...rest,
    ruleSnippet,
    encrypt_dns_server,
    dns_server,
    hostname,
    disabledHostName,
    proxyGroupSnippet: result.proxyGroupList.join('\n'),
    proxyName: result.proxyName,
    ...options,
  }
}

module.exports = { getSurgeSnippet }
