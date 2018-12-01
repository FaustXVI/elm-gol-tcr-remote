module MainSpecs exposing (..)

import Main exposing (..)
import Expect exposing (Expectation)
import Test exposing (..)
import Html exposing (text)

suite : Test
suite =
    describe "Game of life"
        [ test "should init a grid" <|
            \_ -> Expect.equal (init) [
              [ Dead, Dead, Dead],
              [ Dead, Dead, Dead],
              [ Dead, Dead, Dead]]
        , test "should show a grid" <|
            \_ -> Expect.equal (view [[]]) (text "Hello, world!")
        , describe "update"
            [ test "should stay dead when alone" <|
                \_ -> Expect.equal (update NextGeneration [[Dead]]) [[Dead]]
            , test "should die when alone" <|
                \_ -> Expect.equal (update NextGeneration [[Alive]]) [[Dead]]
            , test "should stay dead when alone on a line" <|
                \_ -> Expect.equal (update NextGeneration [[Dead, Dead, Dead]]) [[Dead, Dead, Dead]]
            , test "should stay alive when 2 neighbours are alive" <|
                \_ -> Expect.equal (update NextGeneration [[Alive, Alive, Alive]]) [[Dead, Alive, Dead]]
            , test "should stay alive when 2 vertical neighbours are alive" <|
                \_ -> Expect.equal (update NextGeneration [[Alive], [Alive], [Alive]]) [[Dead], [Alive], [Dead]]
            ]
        ]
