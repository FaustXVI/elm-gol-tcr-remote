module MainSpecs exposing (..)

import Main exposing (..)
import Expect exposing (Expectation)
import Test exposing (..)
import Main exposing (..)
import Html exposing (text)

suite : Test
<<<<<<< HEAD
suite =
    describe "Game of life"
        [ test "should init a grid" <|
            \_ -> Expect.equal (init) [[]]
<<<<<<< HEAD
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
=======
        , test "should show a grid" <|
            \_ -> Expect.equal (view [[]]) (text "Hello, world!")
        , test "should update a grid" <|
            \_ -> Expect.equal (update NoOp [[]]) ([[]], Cmd.none)
>>>>>>> f66fa4bd3c2c82993e16be9094e7fdaba422c247
        ]
