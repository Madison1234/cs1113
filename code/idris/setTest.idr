module setTest

import set
import bool
import eq
import list 
import nat
import Serialize

--expect true
setTest1: bool
setTest1 =  eql ((S O) :: (S (S O)) :: nil) ((S O) :: (S (S O)) :: nil) 

 --expect false 
setTest2: bool
setTest2 = eql ((S O) :: nil) (( S (S O)) :: nil)

--expect false
setTest3: bool
setTest3 = eql ((S O) :: (S O) :: nil) ((S O) :: nil)

--expect "[True,True]"
Ser1: String
Ser1 = toString (true :: true :: nil)



