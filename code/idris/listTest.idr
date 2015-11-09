module listTest

import bool
import list
import nat

--simple pre-created lists, HW Tests below
lO: list nat
lO = nil

l1: list nat
l1 = O :: nil

l2: list nat
l2 = (S O) :: (S (S O)) :: nil

  
l3: list nat
l3 = (S O) :: (S (S O)) :: (S (S (S O))) :: nil

--HW Test Cases
--expect length of O
length1: nat
length1 = length lO

--expect length of (S O) or 1 in English
length2: nat
length2 = length l1

--expect length of  (S (S O)) or 2 in English
length3: nat
length3 = length l2

--expect O :: nil or in English a list containing O
appnd1: list nat
appnd1 = lO ++ l1

--expect S O :: S (S O) :: S O :: S (S O) :: S (S (S O)) :: nil or in
  --English a list containing [ 1 2 1 2 3]
appnd2: list nat
appnd2 = l2 ++ l3

--extra test
li: list bool 
li = true :: false :: true :: true :: nil

m1: list bool
m1 = map evenb ( O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

f8: list nat
f8 = filter evenb (O :: (S O) :: (S (S O)) :: (S (S (S (S O)))) :: nil)

