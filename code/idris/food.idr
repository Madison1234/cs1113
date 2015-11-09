module food

import list

data dish = cookies | soup | salad 

data ingredient = sugar | flour | salt | broth | chocolate | eggs | lettuce | tomato | dressing

data food = mkFood dish ingredient ingredient ingredient 


cook: food
cook = mkFood cookies sugar flour chocolate

sou: food
sou = mkFood soup salt broth eggs

sal: food
sal = mkFood salad lettuce tomato dressing

dishName: food -> dish
dishName (mkFood d i1 i2 i3) = d

ingredient1: food -> ingredient
ingredient1 (mkFood d i1 i2 i3) = i1


f1: list food
f1 = (cons cook (cons sou (cons sal nil)))
