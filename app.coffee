PaceCalc = require './pace-calc.coffee'

if process.argv.length < 5
  console.log 'invalid param number'
  process.exit()

calc = new PaceCalc
task = process.argv[2]
firstArg = process.argv[3]
secondArg = process.argv[4]

taskName = "get#{task[0].toUpperCase()}#{task[1..]}"
if not calc[taskName]
  console.log 'task does not exist'
  process.exit()

console.log calc[taskName](firstArg, secondArg)
