module MainSpecs exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Main exposing (..)

suite : Test
suite =
    describe "Game of life"
        [ test "should init a grid" <|
            \_ -> Expect.equal (init) [[]]
        ]
