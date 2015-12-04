#--------------------------------------#
# start day 1. 
#--------------------------------------#

# inputStr = puzzle1
# start = 0

# i = inputStr.length
# while i--
#   if inputStr[i] is '('
#     start++
#   else if inputStr[i] is ')'
#     start--

# answer = start

#--------------------------------------#
# start day 2. 
#--------------------------------------#

# inputStr = puzzle2

# presents = inputStr.split(' ');

# i = presents.length
# paper = 0

# while i--

#   thing = presents[i] 
#   sides = thing.split('x')

#   paper+= (2*sides[0]*sides[1] + 2*sides[1]*sides[2] + 2*sides[0]*sides[2])
#   biggest = Math.max.apply( Math, sides )

#   sides.splice(sides.indexOf(String(biggest)), 1)

#   paper+= sides[0]*sides[1]


# answer = paper


#--------------------------------------#
# start day 3. 
#--------------------------------------#

coords = [0, 0]

beenTo = []

uniqueHouses = 0
id = ''

inputStr = puzzle3
  
i = inputStr.length
while i--
  current = inputStr[i]
  switch(current)
    when '>'
      coords[0]++
    when '<'
      coords[0]--
    when '^'
      coords[1]++
    when 'v'
      coords[0]--

  id = String(coords[0])+String(coords[1])
  
  if(beenTo.indexOf(id)== -1) 
    uniqueHouses++
    beenTo.push(String(coords[0])+String(coords[1]))

answer = uniqueHouses


$('.output').html answer 
