module Views.ProjectView exposing (..)

import Html exposing (Html, text, div, h2, p, br, ul, li)
import Html.Attributes exposing (class)

import Types exposing (..)
import Content exposing (projects)
import Views.Components.Menu exposing (view)
import Views.Components.Link exposing (view)
import Views.Components.Tag exposing (viewTag)


viewProjectEntry: ProjectEntry -> Html Msg
viewProjectEntry projectEntry =
    div [ class "entry" ] [ 
        h2 [ class "header" ] [ text projectEntry.title ], 
        div [ class "entry-component" ] [
            p [] [text projectEntry.description]],
        div [ class "entry-component" ] [Views.Components.Link.view (String.append "https://github.com/raghavp96/" projectEntry.title) (String.append (String.append "Check " projectEntry.title) " out on GitHub.")],
        div [ class "entry-component" ] [ ul [ class "tag" ] (List.map (\item -> li [ class "tag" ] [ Views.Components.Tag.viewTag item ]) projectEntry.tags)]]

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