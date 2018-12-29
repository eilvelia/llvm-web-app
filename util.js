#!/usr/bin/env node
function calcStrLen (str) {
  // console.log(str)
  return str.replace(/\\[0-9A-F]{2}/g, '_').length
}
console.log(calcStrLen(process.argv[2]))
