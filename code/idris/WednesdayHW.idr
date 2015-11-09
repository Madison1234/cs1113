module pair

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair days bool) = days

snd: pair a b -> b 
snd pair (mkPair days bool) -> bool
