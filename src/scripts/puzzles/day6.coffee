#--------------------------------------#
# start day 5.
#--------------------------------------#

inputStr = puzzle6.split(' ')

i = 0
nums = []

arrayLength = 1000000
matrix = new Array()
x = 0


while x < arrayLength
  columns = []
  y = 0

  while y < arrayLength
    columns[y] = 0
    y++

  matrix[x] = columns

  x++ 

# while (i < inputStr.length)
#   currentStr = inputStr[i]
#   newState = false

#   switch(currentStr)
#     when 'turn'
#       break
#     when 'on'
#       newState = 1
#     when 'off'
#       newState = 0
#     when 'toggle'
#     when 'through'
#       break
#     else
#       nums.push(currentStr)
#       if nums.length > 1
#         lightSwitch(nums)
#         nums = []


#   i++

# lightSwitch = (nums) ->
#   start = nums[0].split(',')
#   finish = nums[1].split(',')


  # do math

answer = ''