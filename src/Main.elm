module Main exposing (..)
import Browser exposing (sandbox)
import Html exposing (text, Html)

type alias Model = List (List Bool)

init : Model
init = [[]]

type Msg = NoOp

view : Model -> Html Msg
view _ =
    text "Hello, world!"

update : Msg -> Model -> Model
update _ model = model

main = sandbox
    { init = init
    , view = view
    , update = update
    }
