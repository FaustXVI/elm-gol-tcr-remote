module MainSpecs exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Main exposing (..)
import Html exposing (text)

suite : Test
suite =
    describe "Game of life"
        [ test "should init a grid" <|
            \_ -> Expect.equal (init) [[]]
        , test "should show a grid" <|
            \_ -> Expect.equal (view [[]]) (text "Hello, world!")
        ]
