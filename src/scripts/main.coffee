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

# coords = [0, 0]

# beenTo = []

# uniqueHouses = 0
# id = ''

# inputStr = puzzle3
# i = 0

# while i<inputStr.length
#   current = inputStr[i]

#   id = String(coords[0])+String(coords[1])
#   if(beenTo.indexOf(id)== -1) 
#     uniqueHouses++
#     beenTo.push(String(coords[0])+String(coords[1]))
  
#   switch(current)
#     when '>'
#       coords[0]++
#     when '<'
#       coords[0]--
#     when '^'
#       coords[1]++
#     when 'v'
#       coords[1]--

#   i++

# answer = uniqueHouses



#--------------------------------------#
# start day 4. 
#--------------------------------------#
inputStr = puzzle4

leading = ''
i = 0
while (leading != '00000')
  leading = md5(puzzle4+i).substring(0,5)
  i++

answer = i

$('.output').html answer 
