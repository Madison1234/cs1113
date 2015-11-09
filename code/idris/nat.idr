module natnat

import bool
import eq
import Serialize

data nat = O | S nat

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n  = not (evenb n)

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n') = mult (S n') (fact n')

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

exp: nat -> nat -> nat
exp x O = (S O)
exp x (S n) = mult x (exp x n)

le: nat -> nat -> bool
le  O m  = true
le  n O = false 
le (S n) (S m) = le n m

eq: nat -> nat -> bool
eq n m = isZero (sub n m)

gt: nat -> nat -> bool
gt (S n) (S m) = not (le n m)

ge: nat -> nat -> bool
ge m O = true
ge O n = false
ge (S m) (S n) = ge m n

lt: nat -> nat -> bool
lt (S n) (S m) = not (ge n m)

fib: nat -> nat
fib (S O) = O
fib (S (S O)) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

instance eq nat where
  eql n1 n2 = eql_nat n1 n2
  
instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)

