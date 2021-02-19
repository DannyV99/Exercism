module Pangram exposing (isPangram)


isPangram : String -> Bool
isPangram sentence =
    theFinisher (theSetup sentence)


theSetup message =
    let
        letters =
            [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]
    in
    List.map (\x -> String.contains x (String.toLower message)) letters


theFinisher gimmeTheList =
    if List.member False gimmeTheList then
        False

    else
        True
