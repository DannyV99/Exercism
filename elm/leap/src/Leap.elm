module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    if littleHelper 100 year == 0 && littleHelper 400 year > 0 then
        False

    else if littleHelper 4 year == 0 then
        True

    else
        False


littleHelper daNumber x =
    List.sum (List.map (remainderBy daNumber) [ x ])
