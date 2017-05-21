module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Messages exposing (Msg(..))
import Models exposing (..)
import ContactList.View exposing (indexView)


view : Model -> Html Msg
view model =
    section []
        [ headerView
        , div []
            [ indexView model ]
        ]


headerView : Html Msg
headerView =
    header [ class "main-header" ]
        [ h1 []
            [ text "Phoenix and Elm: Awesome!!" ]
        ]
