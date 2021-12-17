let Node = ./Node.dhall

let Zone = 
  { zoneName : Text
  , anchorNodes : List Node
  , mobileNode : Node
  }
in Zone