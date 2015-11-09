module colors

import pair
import bool

data color = red | blue | green | magenta | cyan | yellow

complement: color -> color
complement red = cyan
complement green = magenta 
complement blue = yellow
complement yellow = blue
complement magenta = green
complement _ = red

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false 

subtractive: color -> bool
subtractive c = not (additive c )


complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair blue yellow) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair cyan red) = true
complements (mkPair yellow blue) = true
complements (mkPair _ _ ) = false


mixink: pair color color ->  color
mixink (mkPair magenta cyan) = blue
mixink (mkPair yellow cyan) = green
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair cyan magenta) = blue

--ex. test case
q: color
q = mixink (mkPair magenta cyan)
