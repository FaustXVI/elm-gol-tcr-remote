module MainSpecs exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)

add x y = x + y
suite : Test
suite =
    describe "A test"
        [ test "should fail" <|
            \_ -> Expect.equal 3 (add 2 1)
        ]
