module dna

import list
import bool
import pair

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand (h :: t)  = map complement_base (h :: t) 

strand1: list (pair base base) -> list base
strand1 l =  map fst l 

strand2: list (pair base base) -> list base
strand2 l = map snd l

makeDNA: base -> pair base base
makeDNA h = mkPair h (complement_base h)

complete: list base -> list (pair base base)
complete l = map makeDNA l

isEqual: base -> base -> Nat
isEqual A A = 1
isEqual T T = 1
isEqual C C = 1
isEqual G G = 1
isEqual _ _ = 0


countBase: list base -> base -> Nat
countBase l c = list.foldr plus 0 (map (isEqual c ) l)
