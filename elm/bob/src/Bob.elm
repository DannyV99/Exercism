module Bob exposing (hey)


type BobInteraction
    = AskQuestion
    | YellAtHim
    | YellAQuestion
    | NotSayNothing
    | Unknown


bobsResponse : BobInteraction -> String
bobsResponse x =
    case x of
        AskQuestion ->
            "Sure."

        YellAtHim ->
            "Whoa, chill out!"

        YellAQuestion ->
            "Calm down, I know what I'm doing!"

        NotSayNothing ->
            "Fine. Be that way!"

        Unknown ->
            "Whatever."


hey : String -> String
hey =
    String.trim
        >> checkAllInteractions
        >> List.foldr foldingFunc Unknown
        >> bobsResponse


foldingFunc prev curr =
    if curr == Unknown then
        prev

    else
        curr


checkAllInteractions : String -> List BobInteraction
checkAllInteractions x =
    let
        mapper ( f, ifTrue ) =
            if f x then
                ifTrue

            else
                Unknown
    in
    List.map mapper
        [ ( questionCheck, AskQuestion )
        , ( yellCheck, YellAtHim )
        , ( yellQuestionCheck, YellAQuestion )
        , ( silenceCheck, NotSayNothing )
        ]


questionCheck str =
    String.right 1 str == "?"


yellCheck str =
    String.all isSymbolOrUpper str && String.any Char.isUpper str


yellQuestionCheck str =
    yellCheck str && questionCheck str


silenceCheck =
    String.length >> (==) 0


isSymbolOrUpper : Char -> Bool
isSymbolOrUpper char =
    Char.isUpper char || (Char.isLower char |> not)
