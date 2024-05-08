const { hostname, disableHostName } = require('../constant/hostname')

const list = []
hostname.forEach((i) => {
  list.push(i)
})
disableHostName.forEach((i) => {
  list.push(i)
  list.push(`-${i}`)
})

module.exports = {
  hostname: list.join(', '),
  disabledHostName: disableHostName.join(', '),
}
