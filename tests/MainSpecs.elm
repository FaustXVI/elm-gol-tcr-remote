module MainSpecs exposing (..)

import Main exposing (..)
import Expect exposing (Expectation)
import Test exposing (..)
import Html exposing (..)

suite : Test
suite =
    describe "Game of life"
        [ test "should init a grid" <|
            \_ -> Expect.equal (init) [
              [ Dead, Dead, Dead],
              [ Dead, Dead, Dead],
              [ Dead, Dead, Dead]]
        , describe "view" 
            [test "should show a grid" <|
            \_ -> Expect.equal (view [[]]) (div [] [])
            ]
        , describe "update"
            [ test "should stay dead when alone" <|
                \_ -> Expect.equal (update NextGeneration [[Dead]]) [[Dead]]
            , test "should die when alone" <|
                \_ -> Expect.equal (update NextGeneration [[Alive]]) [[Dead]]
            , test "should stay dead when alone on a line" <|
                \_ -> Expect.equal (update NextGeneration [[Dead, Dead, Dead]]) [[Dead, Dead, Dead]]
            , test "should stay alive when 2 neighbours are alive" <|
                \_ -> Expect.equal (update NextGeneration [[Alive, Alive, Alive]]) [[Dead, Alive, Dead]]
            ]
        , describe "zipWith"
            [ test "should use function to zip" <|
                \_ -> Expect.equal (zipWith (+) [1,2] [3,4]) [4,6]
            ]
        ]
