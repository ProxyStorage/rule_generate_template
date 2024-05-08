const list = [
  ['「Flower」', 0.5],
  ['「FishP」', 9999],
  ['「Fish」', 0.6],
  ['「Cat」', 0.4],
  ['「Error」', 0.3],
  ['「MoJie」', 9999],
]

module.exports = list.map(([name, priority]) => `${name}:${priority}`).join(';')
