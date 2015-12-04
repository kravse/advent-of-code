#--------------------------------------#
# start day 1. 
#--------------------------------------#

# inputStr = puzzle1
# start = 0
# part2 = false

# i = 0
# while i<inputStr.length
#   if inputStr[i] is '('
#     start++
#   else if inputStr[i] is ')'
#     start--

#   # part 2
#   if ((start<0) && (part2 == false))
#     basement = i+1
#     part2 = true


#   i++

# answer = i
# answer2 = basement

#--------------------------------------#
# start day 2. 
#--------------------------------------#

# inputStr = puzzle2

# presents = inputStr.split(' ');

# i = presents.length
# paper = 0

# while i--

  # thing = presents[i] 
  # sides = thing.split('x')

  # part 1
  # paper+= (2*sides[0]*sides[1] + 2*sides[1]*sides[2] + 2*sides[0]*sides[2])
  # biggest = Math.max.apply( Math, sides )

  # sides.splice(sides.indexOf(String(biggest)), 1)

  # paper+= sides[0]*sides[1]


  # part 2

  # paper+= sides[0]*sides[1]*sides[2]
  
  # biggest = Math.max.apply( Math, sides )
  # sides.splice(sides.indexOf(String(biggest)), 1)

  # paper += (sides[0]*2) + (sides[1]*2)


# answer = paper


#--------------------------------------#
# start day 3. 
#--------------------------------------#

# part 1
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


# end part 1

# part 2


coords = [0, 0]

coords2 = [0, 0]

beenTo = []

uniqueHouses = 0
id = ''

inputStr = puzzle3
i = 0

if(i%2 == 0)
  id = String(coords[0])+String(coords[1])
  console.log 'santa id: ' + id
else
  id = String(coords2[0])+String(coords2[1])
  console.log 'robot id: ' + id


if(beenTo.indexOf(id)== -1) 
  uniqueHouses++
  console.log('unique')
  beenTo.push(id)

while i<inputStr.length
  console.log 'santa: ', coords, ' robot: ', coords2

  current = inputStr[i]

  switch(current)
    when '>'
      if(i%2 == 0)
        coords[0]++
        console.log 'santa move ' + current
      else
        console.log 'robot move ' + current
        coords2[0]++
    when '<'
      if(i%2 == 0)
        coords[0]--
        console.log 'santa move ' + current
      else
        console.log 'robot move ' + current
        coords2[0]--
    when '^'
      if(i%2 == 0)
        coords[1]++
        console.log 'santa move ' + current
      else
        console.log 'robot move ' + current
        coords2[1]++
    when 'v'
      if(i%2 == 0)
        coords[1]--
        console.log 'santa move ' + current

      else
        console.log 'robot move ' + current
        coords2[1]--

  if(i%2 == 0)
    id = String(coords[0])+String(coords[1])
    console.log 'santa id: ' + id
  else
    id = String(coords2[0])+String(coords2[1])
    console.log 'robot id: ' + id


  if(beenTo.indexOf(id)== -1) 
    uniqueHouses++
    console.log('uniuqe')
    beenTo.push(id)


  console.log 'end: santa: ', coords, ' robot: ', coords2
  console.log '-----'

  i++

answer = uniqueHouses



#--------------------------------------#
# start day 4. 
#--------------------------------------#
# inputStr = puzzle4

# leading = ''
# i = 0

# while (leading != '00000')
#   i++
#   leading = md5(puzzle4+i).substring(0,5)

# answer = i

$('.output').html answer 
