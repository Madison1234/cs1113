record Person where
  constructor MKPerson
  name: String
  age: Nat
  
  

newName: Person -> String -> Person
newName p n = record { name = n} p

p: Person
p = MKPerson "hi" 3

t: Nat
