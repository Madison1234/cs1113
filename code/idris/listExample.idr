module listExample 

import Food
import list
import bool
import pair
import relation


--Example Projection Functions
--expect "cookies"
d: String
d = dish f1


--expect 40
p: Nat
p = prepTime f1

--expect false
h: bool
h = healthy f1

--List of Records, where f1 f2 f3 f4 all represent records of type
  --Food from Food.idr
AllFoods:list Food
AllFoods = f1 :: f2 :: f3 :: f4 :: nil

NoFoods: list Food
NoFoods = nil

--test of map for list
dishes: list String
dishes = mapDish AllFoods

dishes1: list String
dishes1 = map dish AllFoods

--test of map for empty list
dishes2: list String
dishes2 = mapDish NoFoods

dishes3: list String
dishes3 = map dish NoFoods

--test of map for list
PrepTime: list Nat
PrepTime = mapPrepTime AllFoods

PrepTime1: list Nat
PrepTime1 = map prepTime AllFoods

--test of map for empty list
PrepTime2: list Nat
PrepTime2 = mapPrepTime NoFoods

PrepTime3: list Nat
PrepTime3 = map prepTime NoFoods

--test of map for list
Healthy: list bool
Healthy = mapHealthy AllFoods

Healthy1: list bool
Healthy1 = map healthy AllFoods

--test of map for empty list
Healthy2: list bool
Healthy2 = mapHealthy NoFoods

Healthy3: list bool
Healthy3 = map healthy NoFoods




--Query and Relation Test Cases

--expect 95 (minutes)
totalprepTime: Nat
totalprepTime = sum_rel AllFoods healthy prepTime

--expect the pair of 95 and 2, or in other wors 95/2 is the average
  --preptime of all healthy foods in the list
AveragePrepTimeHealthy: pair Nat Nat
AveragePrepTimeHealthy = ave_rel AllFoods healthy prepTime

--expect Salad and Lasagna
AllHealthyFood: String
AllHealthyFood = query2 AllFoods healthy dish (++) ""

--expect 2 (there are 2 healthy dishes in the list of AllFoods)
totaldishes: Nat
totaldishes = count_rel AllFoods healthy 

--expect 0 b/c this evaluates how many healthy dishes there are in the
  --EMPTY list NoFoods
totaldishesEMPTY: Nat
totaldishesEMPTY = count_rel NoFoods healthy

