module Types exposing (..)

import Html exposing (Html)

--  MODEL

type alias Document msg =
  { title : String, body : List (Html msg)  }


type Msg
    = LeftWork | RightWork | LeftProject | RightProject | Redirect Route

type alias WorkExperienceEntry = 
    { title : String, company : String, blurb: String, description : String, link : String}

type alias ProjectEntry = 
    { title : String, blurb: String, description : String}

type Route
    = DefaultRoute | WorkRoute | ProjectRoute | NotFoundRoute

type alias Model =
    { route : Route
    , workIndex : Int
    , projectIndex : Int
    }