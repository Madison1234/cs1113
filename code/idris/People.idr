module People

import Person
import list
import bool

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person 
mary = mkPerson "Mary" 20 59 true

ge: Person 
ge = mkPerson Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false




people : list Person
people = tom :: mary :: ge :: darly :: nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h :: t) = (age h) :: (mapAge t)


map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

