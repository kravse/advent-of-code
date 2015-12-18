inputStr = puzzle10.split('')

x = 0
previous = false
run = []
inRun = false
newString = ''

compute = (run) ->
  console.log 'run: ', run
  newString += String(run.length) + String(run[0])

while x < inputStr.length
  current = inputStr[x]
  
  if previous == current
    run.push[current]
  else
    run = []
    run.push(current)
    compute(run)

  previous = inputStr[x]

  x++

answer = newString