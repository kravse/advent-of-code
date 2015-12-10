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


# coords = [0, 0]
# coords2 = [0, 0]

# beenTo = []

# uniqueHouses = 0
# id = ''

# inputStr = puzzle3
# i = 0

# if(i%2 == 0)
#   id = String(coords[0])+String(coords[1])
# else
#   id = String(coords2[0])+String(coords2[1])

# console.log coords, coords2
# console.log 'id: ',  id

# if(beenTo.indexOf(id)== -1) 
#   console.log 'unique: ',  id
#   uniqueHouses++
#   beenTo.push(id)


# while i<inputStr.length
  
#   current = inputStr[i]

#   switch(current)
#     when '>'
#       if(i%2 == 0)
#         coords[0]++
#       else
#         coords2[0]++
#     when '<'
#       if(i%2 == 0)
#         coords[0]--
#       else
#         coords2[0]--
#     when '^'
#       if(i%2 == 0)
#         coords[1]++
#       else
#         coords2[1]++
#     when 'v'
#       if(i%2 == 0)
#         coords[1]--
#       else
#         coords2[1]--
  
#   if(i%2 == 0)
#     id = String(coords[0])+String(coords[1])
#   else
#     id = String(coords2[0])+String(coords2[1])

#   console.log coords, coords2
#   console.log 'id: ', id

#   if(beenTo.indexOf(id) == -1) 
#     console.log 'unique: ',  id
#     uniqueHouses++
#     beenTo.push(id)

#   i++

# answer = uniqueHouses

