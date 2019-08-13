module Views.ProjectView exposing (..)

import Html exposing (Html, text, div, h2, p, br)
import Html.Attributes exposing (class)

import Types exposing (..)
import Content exposing (projects)
import Views.Components.Menu exposing (view)


viewProjectEntry: ProjectEntry -> Html Msg
viewProjectEntry projectEntry =
    div [] [ 
        h2 [] [ text projectEntry.title ], 
        div [] [
            p [] [text projectEntry.description]]]

viewProjectEntryList: List ProjectEntry -> Html Msg
viewProjectEntryList projectEntries =
    div [ class "row" ] (List.map (\item -> div [] [ viewProjectEntry item ]) projectEntries)


view : Model -> Html Msg
view model =
    div [ class "wrapper" ] [ 
        Views.Components.Menu.view,
        br [][], 
        viewProjectEntryList Content.projects ]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Projects", body = [ view model ]}