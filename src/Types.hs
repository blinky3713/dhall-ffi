{-# LANGUAGE DeriveAnyClass     #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE TemplateHaskell    #-}
{-# LANGUAGE StandaloneDeriving #-}

module Types where

import Dhall.TH

Dhall.TH.makeHaskellTypes
    [ SingleConstructor "Foo" "Foo" "./dhall/Foo.dhall"
    , MultipleConstructors "Color" "./dhall/Color.dhall"
    , SingleConstructor "Bar" "Bar" "./dhall/Bar.dhall"
    , SingleConstructor "TeddyBear" "TeddyBear" "./dhall/TeddyBear.dhall"
    ]

deriving instance Show Foo
deriving instance Show Color
deriving instance Show Bar
deriving instance Show TeddyBear