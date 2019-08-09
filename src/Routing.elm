module Routing exposing (..)

import Types exposing (..)
import Views.DefaultView exposing (viewDocument)
import Views.WorkView exposing (viewDocument)
import Views.ProjectView exposing (viewDocument)
import Views.NotFound exposing (viewDocument)

view : Model -> Document Msg
view model =
    case model.route of
        DefaultRoute -> Views.DefaultView.viewDocument model
        WorkRoute -> Views.WorkView.viewDocument model
        ProjectRoute -> Views.ProjectView.viewDocument model
        NotFoundRoute -> Views.NotFound.viewDocument model
            