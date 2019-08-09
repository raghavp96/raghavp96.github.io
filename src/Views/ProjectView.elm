module Views.ProjectView exposing (..)

import Html exposing (Html, text, div, h2, h3, h4, p, button, ul, a, li, img)
import Html.Attributes exposing (src, href)
import Html.Events exposing (onClick)

import Types exposing (..)
import Content exposing (projects)


viewProjectEntry: ProjectEntry -> Html Msg
viewProjectEntry projectEntry =
    div [] 
        [ h2 [] [ text projectEntry.title ]
        , div [] 
            [p [] [text projectEntry.description]]
        ]

viewProjectEntryList: List ProjectEntry -> Html Msg
viewProjectEntryList projectEntries =
    div [] (List.map (\item -> div [] [ viewProjectEntry item ]) projectEntries)


view : Model -> Html Msg
view model =
    div []
        [ ul [] [
            li [] [a [href "/"] [text "Home"]]
            , li [] [a [href "work"] [text "Work Experience"]]
        ]
        , viewProjectEntryList Content.projects ]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Projects", body = [ view model ]}