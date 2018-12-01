module Main exposing (..)
import Html exposing (text, Html)

type alias Model = List (List Bool)

init : Model
init = [[]]

type Msg = NoOp

view : Model -> Html Msg
view _ =
    text "Hello, world!"

update : Msg -> Model -> (Model, Cmd Msg)
update _ model = (model, Cmd.none)
