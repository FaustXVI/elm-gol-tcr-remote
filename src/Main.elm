module Main exposing (..)
import Browser exposing (sandbox)
import Html exposing (text, Html, div)
import List exposing (map, repeat)

type Cell = Dead | Alive
type alias Model = List (List Cell)

init : Model
init = mkGrid 3

mkGrid n = repeat n <| repeat n Dead

type Msg = NextGeneration

view : Model -> Html Msg
view _ =
    div [] []

update : Msg -> Model -> Model
update _ model = case model of
    [[Alive], cell, _] -> [[Dead], cell, [Dead]]
    [[Alive, cell, _]] -> [[Dead, cell, Dead]]
    _ -> map (map (\_ -> Dead)) model

main = sandbox
    { init = init
    , view = view
    , update = update
    }
