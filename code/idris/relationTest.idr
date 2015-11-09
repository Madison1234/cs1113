module relationTest

import relation
import Person
import bool
import list
import pair

--Test Cases for Person.idr
--Note the results of my test cases may differ from Professor
--Sullivan's b/c of different ages, heights, genders in my list of
--people however the functions work the same way



--Professor Sullivan's test cases we were to implement
--expect 21
years'': Nat
years''= query2 people gender age plus 0

--expect 68
totalHeight: Nat
totalHeight = query2 people gender height plus 0

--expect 68 as well, another way to do totalHeight above
totalInches'': Nat
totalInches'' = query2 people gender height mult 1

--expect Mary
names'': String
names'' = query2 people gender name (++) ""

--expect 1
number: Nat
number = query2 people gender countOne plus 0

--expect a pair of 21 and 1, in other words the average --age is 21
aveAge': pair Nat Nat
aveAge' = ave_rel people gender age




--My own test cases I created

--expect 68
AverageWomenHeight: pair Nat Nat
AverageWomenHeight = ave_rel people gender height

--average height in inches multiplied by 2
--expect 136
DoubleHeight: Nat
DoubleHeight = query2 people gender height mult 2

--if we were to add a characteristic to people of "trustworthy" of
  --type bool (true = trustworthy, false = not trustworthy) we could
  --find the names of all people who are trustworthy
  --expect Tom
  
Who_is_Trustworthy: String
Who_is_Trustworthy = query2 people trustworthy name (++) ""

--expect 72, Toms height
TrustworthyHeight: Nat
TrustworthyHeight = sum_rel people trustworthy height 

