module Main exposing (..)

import Html
import Messages exposing (Msg(..))
import Model exposing (Model, initialModel)
import Update exposing (..)
import View exposing (view)

int : (Model, Cmd Msg)
init =
  initialModel ! [fetch]

main : Program Never Model Msg
main =
  Html.program
    { init = init
    , view = view,
    , update = update
    , subscriptions = always <| Sub.none
    }
