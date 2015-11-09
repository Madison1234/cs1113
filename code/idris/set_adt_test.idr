module set_adt_test

import set_spec
import list 
import eq
import bool
import nat
import option
import pair
import Serialize

--Example sets used in tests

a: set nat
a = mkSet ((S O) :: (S (S O)) :: (S (S (S O))) ::  nil)

b: set nat
b = mkSet ((S (S O)) :: (S (S (S O))) :: nil)

c: set nat
c = mkSet ((S (S (S O))) :: (S (S O)) :: nil)

d: set nat
d = mkSet  ( (S (S O)) :: (S (S (S (S O)))) :: nil)

m: set nat
m = mkSet ((S (S O)) :: (S O) :: nil)

n: set nat
n = mkSet (nil)

r: set nat
r = mkSet ((S (S (S (S O)))) :: nil)

q: set nat
q = mkSet ( (S O) :: nil)

v: set nat
v = mkSet ( (S O) :: nil)

h: set nat
h = mkSet ( (S O) :: (S (S (S O))) :: nil)

j: set bool
j = mkSet ( true :: false ::nil)


--TEST FUNCTIONS

--expect the set of (S (S (S (S O)))) :: (S (S (S O))) :: (S (S O))
--:: nil
set_insert1: set nat
set_insert1 = set_insert (S (S (S ( S O)))) c

--expect the set of {(S O) :: nil}
set_insert2: set nat 
set_insert2 = set_insert (S O) n

--expect the set of {(S ( S O)) :: (S O) :: nil)}
set_insert3: set nat
set_insert3 = set_insert (S O) m


--expect the set of {(S (S O)) :: nil}
set_remove1: set nat
set_remove1 = set_remove (S O) m

--expect the set of {(S (S O) :: (S O) :: nil}
set_remove2: set nat
set_remove2 = set_remove (S (S (S (S O)))) m

--expect (S (S O))
set_cardinality1: nat
set_cardinality1 = set_cardinality c 

--expect O  
set_cardinality2: nat
set_cardinality2 = set_cardinality n

--expect true
set_member1: bool
set_member1 = set_member (S O) m

--epxect false
set_member2: bool
set_member2 = set_member (S (S (S (S O)))) c

--expect the set of {(S O) :: (S (S (S O))) :: (S (S O)) :: nil}
set_union1: set nat
set_union1 = set_union c m  

--expect the set of ((S (S O)) :: (S O) :: nil)
set_union2: set nat
set_union2 = set_union n m

--expect the set of {(S (S O)) :: (S O) :: nil}
set_union3: set nat
set_union3 = set_union m n

--expect the set of {nil}
set_union4: set nat
set_union4 = set_union n n

--expect the set of {nil} 
set_intersection1: set nat
set_intersection1 = set_intersection n m

--expect the set of {( S (S O)) :: nil}
set_intersection2: set nat
set_intersection2 = set_intersection c m

--expect the set of {nil}
set_intersection3: set nat
set_intersection3 = set_intersection r m

--expect the set of  {(S O) :: nil}
set_difference1: set nat
set_difference1 = set_difference a b

--expect the set of { (S (S (S O))) :: (S (S O)) :: nil}
set_difference2: set nat
set_difference2 = set_difference c r

--expect the set of {nil}
set_difference3: set nat 
set_difference3 = set_difference n m

--expect the set of { (S (S O)) :: (S O) :: nil}
set_difference4: set nat 
set_difference4 = set_difference  m n

--expect false
set_forall1: bool
set_forall1 = set_forall evenb c

--expect true
set_forall2: bool
set_forall2 = set_forall evenb d

--expect true
set_exists1: bool
set_exists1 = set_exists evenb d

--expect false
set_exists2: bool
set_exists2 = set_exists evenb q

--expect some (S ( S O))
set_witness1: option nat
set_witness1 = set_witness evenb c

--expect none
set_witness2: option nat
set_witness2 = set_witness evenb h

--expect the set of {(S (S (S (S O)))) (S O) :: nil}
set_product1: set (pair nat nat)
set_product1 = set_product r q

--expect the set of {(S (S (S O))) (S (S O)) :: (S (S (S O))) (S O) ::
  --(S (S O))) (S (S O)) :: (S (S O)) (S O) :: nil}
set_product2: set (pair nat nat)
set_product2 = set_product c m

--expect the set of {nil}
set_product3: set (pair nat nat)
set_product3 = set_product  n c

--expect the set of {nil}
set_product4: set (pair nat nat)
set_product4 = set_product n n

--expect false
set_eql1: bool
set_eql1 = set_eql n c

--expect false
set_eql2: bool
set_eql2 = set_eql c n

--expect true
set_eql3: bool
set_eql3 = set_eql n n

--expect true
set_eql4: bool
set_eql4 = set_eql q v

--expect false
set_eql5: bool
set_eql5 = set_eql c m
--expect "{}"
set_toString1: String
set_toString1 = set_toString n

--expect "{True, False}"
set_toString2: String
set_toString2 = set_toString j
