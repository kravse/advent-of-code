#--------------------------------------#
# start day 5.
#--------------------------------------#


inputStr = puzzle6.split(' ')

i = 0
nums = []

arrayLength = 1000
matrix = new Array()
a = 0

opp = false

while a < arrayLength
  columns = []
  b = 0

  while b < arrayLength
    columns[b] = 0
    b++

  matrix[a] = columns

  a++ 

console.log "Matrix initialized"

lightSwitch = (nums, opp) ->

  start = nums[0].split(',')
  finish = nums[1].split(',')
  
  xS = parseInt(start[0])
  xF = parseInt(finish[0])
  newVal = false

  switch(opp)
    when 'on'
      newVal = 1
    when 'off'
      newVal = 0
    when 'toggle'
      newVal = -1

  
  while xS < xF+1

    yS = parseInt(start[1])
    yF = parseInt(finish[1])

    while yS < yF+1
      if newVal < 0
        if matrix[xS][yS] == 1
          matrix[xS][yS] = 0
        else
          matrix[xS][yS] = 1
      else if newVal > 0
        matrix[xS][yS] = newVal
      yS++

    xS++

opp = false

while (i < inputStr.length)
  currentStr = inputStr[i]

  switch(currentStr)
    when 'turn'
      break
    when 'on'
      opp = 'on'
    when 'off'
      opp = 'off'
    when 'toggle'
      opp = 'toggle'
    when 'through'
      break
    else
      nums.push(currentStr)
      if nums.length > 1
        lightSwitch(nums, opp)
        nums = []


  i++


a = 0
answer = 0

while a < arrayLength
  b = 0

  while b < arrayLength
    if matrix[a][b] == 1
      answer++
    b++

  a++ 



  # do math
