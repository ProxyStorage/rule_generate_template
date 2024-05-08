const { encrypt } = require('../constant/dns')

function DNS(platform) {
  const listMap = {
    doq: [],
    doh: [],
    doh3: [],
  }
  const map = {
    doq: DOQ,
    doh: DOH,
    doh3: DOH3,
  }
  encrypt.forEach((dnsConfigItem) => {
    dnsConfigItem.type.forEach((type) => {
      if (map[type]) {
        const dnsStr = map[type](platform, dnsConfigItem.host)
        listMap[type].push(dnsStr)
      }
    })
  })
  if (platform === 'loon')
    return listMap

  return Object.values(listMap).flat()
}
/**
 *
 * @param {'surge'|'clash'|'loon'} platform
 * @param {string} host
 * @returns
 */
function DOQ(platform, host) {
  if (platform === 'surge')
    return `quic://${host}`
  else if (platform === 'clash')
    return `quic://${host}`
  else if (platform === 'loon')
    return `quic://${host}`
}

/**
 *
 * @param {'surge'|'clash'|'loon'} platform
 * @param {string} host
 * @returns
 */
function DOH(platform, host) {
  if (platform === 'surge')
    return `https://${host}/dns-query`
  else if (platform === 'clash')
    return `https://${host}/dns-query`
  else if (platform === 'loon')
    return `https://${host}/dns-query`
}

/**
 *
 * @param {'surge'|'clash'|'loon'} platform
 * @param {string} host
 * @returns
 */
function DOH3(platform, host) {
  if (platform === 'surge')
    return `h3://${host}/dns-query`
  else if (platform === 'clash')
    return `https://${host}/dns-query#h3=true`
  else if (platform === 'loon')
    return `h3://${host}/dns-query`
}
/**
 *
 * @param {'surge'|'clash'} platform
 * @returns
 */
module.exports = function getEncryptDNS(platform) {
  return DNS(platform)
}
