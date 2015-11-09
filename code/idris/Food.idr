module Food

import bool
import list
import relation



||| A record type that is equivalent to:
||| (data Food = mkFood String Nat bool)
|||but where we give names to fields.
||| A type of Food has a dish name, a preparation time in minutes, and   |||information on whether or not the food is considered healthy for one to |||consume.

record Food where
    constructor MKFood
    dish : String
    prepTime : Nat
    healthy : bool
--food = MKFood dish prepTime healthy    
--Example values of type Food
f1: Food
f1 = MKFood "cookies" 40 false

f2: Food
f2 = MKFood "salad" 15 true

f3: Food
f3 = MKFood "cake" 60 false

f4: Food
f4 = MKFood "lasagna" 80 true


mapDish: list Food -> list String
mapDish nil = nil
mapDish (h :: t) = (dish h) :: (mapDish t)

mapPrepTime: list Food -> list Nat
mapPrepTime nil = nil
mapPrepTime (h :: t) = (prepTime h) :: (mapPrepTime t)

mapHealthy: list Food -> list bool
mapHealthy nil = nil
mapHealthy (h :: t) = (healthy h) :: (mapHealthy t)



