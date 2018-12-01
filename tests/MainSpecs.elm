module MainSpecs exposing (..)

import Main exposing (..)
import Expect exposing (Expectation)
import Test exposing (..)
import Main exposing (..)

suite : Test
<<<<<<< HEAD
suite =
    describe "Game of life"
        [ test "should init a grid" <|
            \_ -> Expect.equal (init) [[]]
=======
suite = [
    describe "A test"
        [ test "should fail" <|
            \_ -> Expect.equal 3 (add 2 1)
        ],
    describe "A second test"
        [ test "should create a grid" <|
            \_ -> Expect.equal [[]] (grid 0 0)
>>>>>>> Add to initialize an empty grid
        ]
