module notUnBox

import bool 

data Box = mkBox bool

notUnBox: Box -> bool
notUnBox (mkBox true) = false
notUnBox (mkBox false) = true

