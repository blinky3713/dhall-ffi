let ZoneConfig =  ./ZoneConfig.dhall
let Zone = ./Zone.dhall

let mkZone
  : Zone → ZoneConfig
  = λ(zone : Zone) →
        { zcName = zone.zoneName
        , zcAnchorNodes = zone.anchorNodes
        , zcMobileNode = zone.mobileNode
        , zcHash = "1234"
        }
in mkZone