#--------------------------------------#
# start day 5.
#--------------------------------------#
inputStr = puzzle5.split(' ')


i = 0

vowels = ['a', 'e', 'i', 'o', 'u']
badStrings = ['ab', 'cd', 'pq', 'xy']

goodStrings = 0

while (i < inputStr.length)
  currentStr = inputStr[i]
  
  doubleLetter = false
  step2 = false
  prevLetter = false
  vowelCount = 0
  noBadStrings = true

  for letter in currentStr
    lastTwo = false
    
    if(vowels.indexOf(letter)!= -1)
      vowelCount++

    if(prevLetter == letter && doubleLetter == false)
      doubleLetter = true

    if(prevLetter)
      lastTwo = prevLetter + letter

    if(badStrings.indexOf(lastTwo)!= -1)
      noBadStrings = false


    prevLetter = letter
  
  if noBadStrings
    if doubleLetter && vowelCount > 2
      goodStrings++

  i++


answer = goodStrings