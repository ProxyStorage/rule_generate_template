// 读取./dist目录下的所有文件，删除文件中的空行
const fs = require('node:fs')
const path = require('node:path')

const distDir = path.resolve(__dirname, '../dist')
const files = fs.readdirSync(distDir)

files.forEach((file) => {
  const filePath = path.resolve(distDir, file)
  const content = fs.readFileSync(filePath, 'utf-8')
  const newContent = content.replace(/\n+/g, '\n')
  fs.writeFileSync (filePath, newContent)
})
