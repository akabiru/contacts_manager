module Contact.Model exposing (..)

type alias Contact =
    { id : Int
    , firstName : String
    , lastName : String
    , gender : Int
    , birthDate : String
    , location : String
    , phoneNumber : String
    , email : String
    , headline : String
    , picture : String
    }
