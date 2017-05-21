module ContactList.Model exposing (..)

import Contact.Model exposing (Contact)

type alias ContactList =
    { entries : List Contact
    , pageNumber : Int
    , totalEntries : Int
    , totalPages : Int
    }
