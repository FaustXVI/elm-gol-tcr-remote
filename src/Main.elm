module Main exposing (..)
import Browser exposing (sandbox)
import Html exposing (text, Html)
import List exposing (map)

type Liveness = Dead | Alive
type alias Model = List (List Liveness)

init : Model
init = [[]]

type Msg = NextGeneration

view : Model -> Html Msg
view _ =
    text "Hello, world!"

update : Msg -> Model -> Model
update _ model = map (map (\_ -> Dead)) model

main = sandbox
    { init = init
    , view = view
    , update = update
    }
