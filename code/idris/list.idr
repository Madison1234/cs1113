module list 

import bool
import nat
import ite
import eq
import Serialize


infixr 7 :: 

infixr 7 ++

data list a = nil | (::) a (list a)

isEmpty: list a -> bool
isEmpty nil = true
isEmpty _ = false

length: list a -> nat
length nil = O
length (n :: l) = S (length l)

(++): list a -> list a -> list a
(++) nil l = l
(++) (h :: t) l1 = h :: (t ++ l1)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h)
                        (h :: (filter f t))
                              (filter f t)
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h :: t) = f h (list.foldr f id t)


member:(eq a) => a -> list a -> bool
member v nil = false
member v (h :: t) = ite (eql v h) 
                        true
                        (member v t) 
                        
instance (eq a) => eq (list a) where
 eql nil nil = true
 eql (h :: t) nil = false
 eql nil (h :: t) = false
 eql (h1 :: t1) (h2 :: t2) = and (eql h1 h2) ( eql t1 t2)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements  nil l1 = true
subset_elements (h :: t) l2 = ite (member h l2)
                                  (subset_elements t l2)
                                  false   


same_element: (eq a) => list a -> list a -> bool
same_element l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)



--EXTRA CREDIT
--THE ORIGINAL WAY I DID THE EXTRA CREDIT (this version works as well)
--listString: (Serialize a, eq a) =>  list a -> String
--listString nil = "[]"
--listString (h :: t) = ite (eql t nil)
                      --(toString h)
                      --((toString h) ++ "," ++ (listString t))

--instance (Serialize a, eq a) => Serialize (list a)  where
  --toString nil = "[]"
  --toString l = "[" ++ listString l ++ "]"

--THE WAY WE DID THE EXTRA CREDIT IN CLASS
toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h :: nil) = (toString h)
toStringList (h :: t) = (toString h) ++ "," ++ (toStringList t)

instance (Serialize a) =>  Serialize (list a) where
  toString nil = "[]"
  toString l = "[" ++ (toStringList l) ++ "]"


