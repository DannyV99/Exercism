module Test.Generated.Main1139872067 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 322550947431426, processes = 4, globs = [], paths = ["/Users/daniel/Exercism/elm/twelve-days/tests/Tests.elm"]}