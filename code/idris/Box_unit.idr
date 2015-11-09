module  bool

import bool 
import unit

data Box = mkBox unit

b1: Box
b1 = (mkBox mkUnit)

b2: Box
b2 = (mkBox false)


unbox: Box -> bool
unbox (mkBox b) = b

notUnBox: Box -> bool
--notUnBox (mkBox true) = false
--notUnBox (mkBox false) = true
notUnBox (mkBox b) = not b 
