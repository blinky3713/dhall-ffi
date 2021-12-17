let Zone = ./Zone.dhall
let Node = ./Node.dhall

let ZoneConfig = 
  { zcName : Text
  , zcAnchorNodes : List Node
  , zcMobileNode : Node
  , zcHash : Text
  }
in ZoneConfig
