module natTest

import bool
import nat
import Serialize


z: nat
z = O

o: nat
o = S O

t: nat
t = S (S O)

r: nat
r = S t

f: nat
f = S r

i: nat
i = S f

v: nat
v = S i

x: bool
x = isZero r

y: nat
y = succ O

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb r

even1: bool
even1 = evenb (S r)

odd1: bool
odd1 = oddb (S O)

--expect O
add1: nat
add1 = add O O

--expect (S (S O))
add2: nat
add2 = add O (S (S O))

--expect (S O)
add3: nat
add3 = add (S O ) O

--expect  (S (S (S (S (S O)))))
add4: nat
add4 = add (S (S O)) (S (S (S O)))

--expect (S (S O))
mult1: nat
mult1 = mult (S O) (S (S O))

--expect (S (S (S (S (S (S O))))))
mult2: nat
mult2 = mult (S (S (S O))) (S (S O))

--expect (S O)
fact1: nat
fact1 = fact O

--expect (S O)
fact2: nat
fact2 = fact (S O)

--expect (S (S O))
fact3: nat
fact3 = fact (S (S O))

--expect O
sub1: nat
sub1 = sub O (S O)

--expect (S O)
sub2: nat
sub2 = sub (S (S O)) (S O)

--expect (S O)
exp1: nat
exp1 = exp (S O) O

--expect (S (S (S (S O))))
exp2: nat
exp2 = exp (S (S O)) (S (S O))

--expect (S (S (S (S (S (S (S (S (S O)))))))))
exp3: nat
exp3 = exp (S (S (S O))) (S (S O))

--expect true
le1: bool
le1 = le O (S O)

--expect false
le2: bool
le2 = le (S (S O)) O

--expect false
le3: bool
le3 = le (S (S (S O))) (S (S O))

--expect true
eq1: bool
eq1 = eq O O

--expect true
eq2: bool
eq2 = eq (S (S O)) (S (S O))

--expect false
eq3: bool
eq3 = eq (S (S O)) (S O)

--expect true
gt1: bool
gt1 = gt (S (S O)) (S O)

--expect false
gt2: bool
gt2 = gt O O

--expect false
gt3: bool
gt3 = gt (S O) (S (S O))

--expect false
ge1: bool
ge1 = ge O (S (S O))

--expect false
ge2: bool
ge2 = ge O (S O)

--expect false
ge3: bool
ge3 = ge (S O) (S (S O))

--expect false
lt1: bool
lt1 = lt (S (S (S O))) (S O)

--expect true
lt2: bool
lt2 = lt (S O) (S (S O))


--expect false
lt3: bool
lt3 = lt (S (S O)) (S (S O))

--expect O
fib1: nat
fib1 = fib (S O)

--expect (S O)
fib2: nat
fib2 = fib (S (S O))

--expect (S O)
fib3: nat
fib3 = fib (S (S (S O)))

--expect (S (S O))
fib4: nat
fib4 = fib (S (S (S (S O))))


h4: nat
h4 = add (S (S O)) (S (S (S O)))

s: String
s = toString h4
