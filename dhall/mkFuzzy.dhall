import "./TeddyBear.dhall"

mkFuzzy = \{bear : TeddyBear} ->
      bear with bear.bar.fuzzy = True
in mkFuzzy