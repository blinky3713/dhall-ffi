{-# LANGUAGE DeriveAnyClass     #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE TemplateHaskell    #-}
{-# LANGUAGE StandaloneDeriving #-}

module Types where

import Dhall.TH

Dhall.TH.makeHaskellTypes
    [ SingleConstructor "Zone" "Zone" "./dhall/Zone.dhall"
    , MultipleConstructors "Color" "./dhall/Color.dhall"
    , SingleConstructor "Node" "Node" "./dhall/Node.dhall"
    , SingleConstructor "ZoneConfig" "ZoneConfig" "./dhall/ZoneConfig.dhall"
    ]

deriving instance Show Zone
deriving instance Show Color
deriving instance Show Node
deriving instance Show ZoneConfig