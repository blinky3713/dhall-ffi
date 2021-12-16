let Foo = ./Foo.dhall
let Bar = ./Bar.dhall

let TeddyBear = 
  { foo : Foo
  , bar : Bar
  }
in TeddyBear
