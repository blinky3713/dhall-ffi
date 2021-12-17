{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NamedFieldPuns #-}

import Dhall
import Types

mkNode name color = 
  Node { name
       , color
       }

[an1, an2, mn] = 
  Prelude.map (uncurry mkNode) [("an1", Blue), ("an2", Blue), ("mn", Red)]

testZone :: Zone
testZone = 
  Zone { zoneName = "test"
       , anchorNodes = [an1, an2]
       , mobileNode = mn
       }

main :: IO ()
main = do
  mkZone :: Zone -> ZoneConfig <- inputFile (function inject auto) "./dhall/mkZone.dhall"
  print $ mkZone testZone