module Messages exposing (..)

import Http
import ContactList.Model exposing (ContactList)


type Msg
    = FetchResult (Result Http.Error ContactList)
