module TwelveDays exposing (recite)


recite : Int -> Int -> List String
recite start stop =
    if start == stop && start < 1 then
        List.singleton (beginning (Tuple.first (numberTense start)) ++ Tuple.second (numberTense start))

    else
        List.singleton (beginning (Tuple.first (numberTense start)) ++ Tuple.second (numberTense start))


beginning numberOfDay =
    "On the " ++ numberOfDay ++ " day of Christmas my true love gave to me: "


numberTense numbski =
    case numbski of
        1 ->
            ( "first", "a Partridge in a Pear Tree." )

        2 ->
            ( "second", "two Turtle Doves" )

        3 ->
            ( "third", "three French Hens" )

        4 ->
            ( "fourth", "four Calling Birds" )

        5 ->
            ( "fifth", "five Gold Rings" )

        6 ->
            ( "sixth", "six Geese-a-Laying" )

        7 ->
            ( "seventh", "seven Swans-a-Swimming" )

        8 ->
            ( "eighth", "eight Maids-a-Milking" )

        9 ->
            ( "ninth", "nine Ladies Dancing" )

        10 ->
            ( "tenth", "ten Lords-a-Leaping" )

        11 ->
            ( "eleventh", "eleven Pipers Piping" )

        12 ->
            ( "twelfth", "twelve Drummers Drumming" )

        _ ->
            ( "AHHHH", "AHHHH" )
