module ContactList.View exposing (indexView)

import Html exposing (..)
import Html.Attributes exposing (id, class)
import Contact.View exposing (contactView)
import Messages exposing (Msg(..))
import Model exposing (Model)


indexView : Model -> Html Msg
indexView model =
    div [ id "home_index" ]
        [ div []
            [ contactsList model ]
        ]


contactsList : Model -> Html Msg
contactsList model =
    if model.contactList.totalEntries > 0 then
        model.contactList.entries
            |> List.map contactView
            |> div [ class "cards-wrapper" ]
    else
        let
            classes =
                classList
                    [ ( "warning", True ) ]
        in
            div [ classes ]
                [ span [ class "fa-stack" ]
                    [ i [ class "fa fa-meh-o fa-stack-2x" ] [] ]
                , h4 []
                    [ text "No contacts found..." ]
                ]
