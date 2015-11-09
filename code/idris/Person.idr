module Person
import list
import bool
||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat
    height : Nat
    gender : bool
    trustworthy: bool
-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3 34 true true


t: Nat
t = age p
-- expect 3

n: String
n = name p

h: Nat
h = height p

tom: Person
tom = MkPerson "Tom" 18 72 false true

mary: Person
mary =  MkPerson "Mary" 21 68 true false

people: list Person
people = mary :: tom :: nil

 
