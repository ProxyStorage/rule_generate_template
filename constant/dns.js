const encrypt = [
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
const dns = ['223.5.5.5', '223.6.6.6', '119.29.29.29', '114.114.114.114']

module.exports = {
  dns,
  encrypt,
}
