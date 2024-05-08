const { SURGIO_URL_BASE, SURGIP_UPLOAD_PREFIX, SURGIP_UPLOAD_BUCKET, SURGIO_UPLOAD_REGION, SURGIP_UPLOAD_ACCESS_KEY_ID, SURGIP_UPLOAD_ACCESS_KEY_SECRET, ...rest } = require('../constant/env')
const { getAllSelect, getAllIncludeGroup } = require('../constant/defaultSelect')
const { dns } = require('../constant/dns')
const proxyName = require('../constant/proxyName')
const policyPriority = require('../constant/surgePolicyPriority')
const getRuleSnippet = require('./getSnippet')
const getEncryptDNS = require('./getEncryptDNS')
const { hostname, disabledHostName } = require('./surgeHostName')

function getSurgeConfig(isMobile = true) {
  return {
    ...rest, // 环境变量
    ...getRuleSnippet('surge', getAllSelect('surge'), getAllIncludeGroup('surge'), isMobile),
    hostname,
    disabledHostName,
    proxyName,
    dns_server: dns.join(', '),
    encrypt_dns_server: getEncryptDNS('surge').join(', '),
    isSmart: true,
    allSelect: getAllSelect('surge'),
    allIncludeGroup: getAllIncludeGroup('surge'),
    policyPriority: policyPriority.map(([name, priority]) => `${name}:${priority}`).join(';'),
  }
}

function getClashConfig() {
  return {
    ...rest, // 环境变量
    clashSnippet: getRuleSnippet('clash', getAllSelect('clash'), getAllIncludeGroup('clash'), true),
    dns_server: dns,
    encrypt_dns_server: getEncryptDNS('clash'),
    proxyName,
    dns: true,
    allSelect: getAllSelect('clash'),
  }
}

function getLoonConfig() {
  return {
    ...rest,
    ...getRuleSnippet('loon', getAllSelect('loon'), getAllIncludeGroup('loon'), false),
    dns_server: dns,
    encrypt_dns_server: getEncryptDNS('loon'),
    proxyName,
    dns: true,
    allSelect: getAllSelect('loon'),
  }
}

module.exports = {
  getSurgeConfig,
  getClashConfig,
  getLoonConfig,
}
