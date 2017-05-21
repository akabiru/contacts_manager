module Contact.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg(..))
import Model exposing (..)


contactView : Contact -> Html Msg
contactView model =
    let
        classes =
            classList
                [ ( "card", True )
                , ( "male", model.gender == 0 )
                , ( "female", model.gender == 1 )
                ]
    in
        div [ classes ]
            [ div [ class "inner" ]
                [ header []
                    [ avatarWrapper model.picture
                    , infoWrapper model
                    ]
                , cardBody model
                ]
            ]


avatarWrapper : String -> Html msg
avatarWrapper picture =
    div [ class "avatar-wrapper" ]
        [ img
            [ class "avatar"
            , src picture
            ]
            []
        ]


infoWrapper : Model -> Html msg
infoWrapper model =
    let
        fullName =
            model.firstName ++ " " ++ model.lastName
    in
        div [ class "info-wrapper" ]
            [ h4 []
                [ text fullName ]
            , ul [ class "meta" ]
                [ listItem "fa fa-map-marker" model.location
                , listItem "fa fa-birthday-cake" model.birthDate
                ]
            ]


cardBody : Model -> Html msg
cardBody model =
    div [ class "card-body" ]
        [ div [ class "headline" ]
            [ p [] [ text model.headline ] ]
        , ul [ class "contact-info" ]
            [ listItem "fa fa-phone" model.phoneNumber
            , listItem "fa fa-envelope" model.email
            ]
        ]


listItem : String -> String -> Html msg
listItem className content =
    li []
        [ i [ class className ] []
        , text content
        ]
