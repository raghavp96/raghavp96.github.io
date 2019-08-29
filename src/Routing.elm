module Routing exposing (..)

import Url.Parser exposing (Parser, (</>), int, parse, map, oneOf, s, string, top)

import Types exposing (..)
import Views.DefaultView exposing (viewDocument)
import Views.WorkView exposing (viewDocument)
import Views.ProjectView exposing (viewDocument)
import Views.InterestView exposing (viewDocument)
import Views.NotFound exposing (viewDocument)

routeParser : Parser (Route -> a) a
routeParser =
  oneOf
    [ 
        map DefaultRoute          top, 
        map DefaultRoute          (s "home"), 
        map WorkRoute             (s "work"), 
        map ProjectRoute          (s "project"),
        map InterestRoute         (s "interest")
    ]

view : Model -> Document Msg
view model =
    let route = Maybe.withDefault NotFoundRoute (parse routeParser model.url)
    in 
        case route of 
            DefaultRoute -> Views.DefaultView.viewDocument model
            WorkRoute -> Views.WorkView.viewDocument model
            ProjectRoute -> Views.ProjectView.viewDocument model
            InterestRoute -> Views.InterestView.viewDocument model
            NotFoundRoute -> Views.NotFound.viewDocument model