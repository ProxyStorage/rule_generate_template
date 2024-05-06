const encrypt_dns_server = [
  // 'quic://223.5.5.5', 'quic://223.6.6.6',
  // 'https://doh.pub/dns-query', 'https://dns.alidns.com/dns-query#h3=true',
  // 'https://1.12.12.12/dns-query', 'https://120.53.53.53/dns-query'
  // {
  //   host: 'dns.alidns.com',
  //   type: ['doh3', 'doq', 'doh'],
  // },
  // {
  //   host: 'doh.pub',
  //   type: ['doh'],
  // },

  {
    host: '223.5.5.5',
    type: ['doq', 'doh', 'doh3'], // ali
  },
  {
    host: '223.6.6.6',
    type: ['doq', 'doh', 'doh3'], // ali
  },
  {
    host: '1.12.12.12', // dnspod
    type: ['doh'],
  },
  {
    host: '120.53.53.53', // dnspod
    type: ['doh'],
  },
]

/**
 *
 * @param {'surge'|'clash'} platform
 * @returns
 */
module.exports = function getEncryptDNS(platform) {
  return DNS(platform)
}

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
  encrypt_dns_server.forEach((dnsConfigItem) => {
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
