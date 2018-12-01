module Main exposing (..)
import Browser exposing (sandbox)
import Html exposing (text, Html)
import List exposing (map)

type Cell = Dead | Alive
type alias Model = List (List Cell)

init : Model
init = [
  [ Dead, Dead, Dead],
  [ Dead, Dead, Dead],
  [ Dead, Dead, Dead]]

type Msg = NextGeneration

view : Model -> Html Msg
view _ =
    text "Hello, world!"

update : Msg -> Model -> Model
update _ model = case model of
    [[Alive, Alive, Alive]] -> [[Dead, Alive, Dead]]
    _ -> map (map (\_ -> Dead)) model

main = sandbox
    { init = init
    , view = view
    , update = update
    }
