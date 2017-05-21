module Model exposing (..)

import ContactList.Model exposing (ContactList)


type alias Model =
    { contactList : ContactList
    , error : Maybe String
    }


initialContactList : ContactList
initialContactList =
    { entries = []
    , pageNumber = 1
    , totalEntries = 0
    , totalPages = 0
    }


initialModel : Model
initialModel =
    { contactList = initialContactList
    , error = Nothing
    }
