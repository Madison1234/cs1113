module soup

data soup = monday | tuesday | wednesday | thursday | friday | clamchowder | chicken | tomato | vegetable | pea

soupofday: soup -> soup
soupofday monday = clamchowder
soupofday tuesday = chicken  
soupofday wednesday = tomato
soupofday thursday = vegetable 
soupofday friday = pea 
