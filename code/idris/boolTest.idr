module boolTest

import bool
import Serialize


b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

--expect true
and1: bool
and1 = and true true

--expect false
and2: bool
and2 = and true false

--expect false
and3: bool
and3 = and false true

--expect false
and4: bool
and4 = and false false

--expect false
or1: bool
or1 = or false false

-- expect true
or2: bool
or2 = or true true

--expect true
or3: bool
or3 = or false true

--expect true
or4: bool
or4 = or true false

--expect false
nand1: bool
nand1 = nand true true

--expect true
nand2: bool
nand2 = nand false false

--expect true
nand3: bool
nand3 = nand true false

--expect true
nand4: bool
nand4 = nand false true

--expect true
xor1: bool
xor1 = xor true false

--expect true
xor2: bool
xor2 = xor false true

--expect false
xor3: bool
xor3 = xor true true

--expect false
xor4: bool
xor4 = xor false false


s: String
s = toString true


