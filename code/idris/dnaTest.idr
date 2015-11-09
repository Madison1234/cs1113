module dnaTest

import dna
import list
import bool
import pair

--Homework 11 Test Code
--expect T
cb1: base
cb1 = complement_base A

--expect A
cb2: base
cb2 = complement_base T

--expect G
cb3: base
cb3 = complement_base C

--expect C
cb4: base
cb4 = complement_base G


--Other Test Code
--expect list of [ T :: A :: C :: G :: nil]
complement_strand1: list base
complement_strand1 = map complement_base (A :: T :: G :: C :: nil)

--expect list of [A :: C :: nil]
str1: list base
str1 = map fst ((mkPair A T) :: (mkPair C G) :: nil)

--expect list of [ T :: G :: nil]
str2: list base
str2 = map snd ((mkPair A T) :: (mkPair C G) :: nil)

--expect list of[ AT :: TA :: CG :: nil]
complete1: list (pair base base)
complete1 = map makeDNA (A :: T :: C :: nil)

--expect 2
countBase1: Nat
countBase1 = countBase ( A :: C :: A :: nil) A
 
 
