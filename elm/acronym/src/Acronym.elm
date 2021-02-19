module Acronym exposing (abbreviate)


abbreviate : String -> String
abbreviate phrase =
    String.map
        (\c ->
            if Char.isAlpha c == False then
                ' '

            else
                c
        )
        phrase
        |> String.words
        |> List.map (\z -> String.left 1 z)
        |> String.join ""
        |> String.toUpper
