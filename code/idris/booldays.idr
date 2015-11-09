module booldays

import bool
import days

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair bool days) = days

