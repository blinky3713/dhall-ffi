{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

import Dhall
import Types

testFoo :: Foo 
testFoo = 
  Foo { name = "Martin"
      , idNumber = 1
      }

testBar :: Bar
testBar = 
  Bar { fuzzy = False
      , color = Blue
      }

testBear :: TeddyBear
testBear = TeddyBear
  { foo = testFoo
  , bar = testBar
  }

main :: IO ()
main = do
  mkFuzzy :: TeddyBear -> TeddyBear <- detailed $ input (function inject auto) "./dhall/mkFuzzy.dhall"
  print $ mkFuzzy testBear