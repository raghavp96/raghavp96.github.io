module Views.WorkView exposing (..)

import Html exposing (Html, text, div, h2, h3, p, br, ul, li)
import Html.Attributes exposing (class)

import Types exposing (..)
import Content exposing (projects)
import Views.Components.Menu exposing (view)
import Views.Components.Tag exposing (viewTag)



viewWorkExperience: WorkExperienceEntry -> Html Msg
viewWorkExperience workExperienceEntry =
    div [ class "entry" ] [ 
        h2 [ class "header" ] [ text workExperienceEntry.company ], 
        h3 [] [ text workExperienceEntry.title ], 
        div [ class "entry-component" ] (List.map (\item -> p [] [ text item ]) workExperienceEntry.description ),
        div [ class "entry-component" ] [ ul [ class "tag" ] (List.map (\item -> li [ class "tag" ] [ Views.Components.Tag.viewTag item ]) workExperienceEntry.tags)]]

viewWorkExperienceList: List WorkExperienceEntry -> Html Msg
viewWorkExperienceList workExperienceEntries =
    div [ class "row" ] (List.map (\item -> div [] [ viewWorkExperience item ]) workExperienceEntries)


view : Model -> Html Msg
view model =
    div [ class "wrapper" ] [
        Views.Components.Menu.view,
        br [][], 
        viewWorkExperienceList Content.workExperience ]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Work", body = [ view model ]}
