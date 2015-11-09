module Box

import unit

data Box = mkBox unit


unbox: Box -> unit
unbox (mkBox b) = b
