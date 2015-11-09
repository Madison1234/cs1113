module BoxTest

import Box
import bool
import unit
import eq

box1: Box bool
box1 = (mkBox true)

box2: Box unit
box2 = (mkBox mkUnit)

--eql_box: (eq a) => Box a -> Box a -> bool
--eql_box (mkBox v1) (mkBox v2) = eql v1 v2


instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2
 
 
