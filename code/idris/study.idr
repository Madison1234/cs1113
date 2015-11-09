module Box

data Box a = mkBox a

unbox: Box a -> a
unbox (mkBox a) = a
