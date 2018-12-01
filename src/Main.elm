module Main exposing (..)
import Browser exposing (sandbox)
import Html exposing (text, Html, div)
import List exposing (map, repeat)
import Random exposing (Generator)

type Cell = Dead | Alive
type alias Model = List (List Cell)

newCellState : Generator Cell
newCellState = Random.map (\i -> if i >= 20 then Alive else Dead) (Random.int 1 100)

init : Model
init = mkGrid 3

mkGrid n = repeat n <| repeat n Dead

type Msg = NextGeneration

view : Model -> Html Msg
view _ =
    div [] []

update : Msg -> Model -> Model
update _ model = let
                     aliveCount = map (map (\c -> if c == Alive then 1 else 0)) model
                     neighboursCount = moveLeft aliveCount
                 in case model of
                    [[Alive], cell, _] -> [[Dead], cell, [Dead]]
                    [[Alive, cell, _]] -> [[Dead, cell, Dead]]
                    _ -> map (map (\_ -> Dead)) model

moveLeft : List (List Int) -> List (List Int)
moveLeft matrix = map moveLineLeft matrix

moveLineLeft : List Int -> List Int
moveLineLeft line = case line of
                        [] -> []
                        x::xs -> xs ++ [0]

main = sandbox
    { init = init
    , view = view
    , update = update
    }
