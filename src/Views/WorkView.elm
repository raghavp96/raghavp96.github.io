module Views.WorkView exposing (..)

import Html exposing (Html, text, div, h2, h3, h4, p, button, ul, a, li, img)
import Html.Attributes exposing (src, href)
import Html.Events exposing (onClick)

import Types exposing (..)
import Content exposing (projects)


viewWorkExperience: WorkExperienceEntry -> Html Msg
viewWorkExperience workExperienceEntry =
    div [] 
        [ h2 [] [ text workExperienceEntry.company ]
        , h3 [] [ text workExperienceEntry.title]
        , div [] 
            [p [] [text workExperienceEntry.description]]
        ]

viewWorkExperienceList: List WorkExperienceEntry -> Html Msg
viewWorkExperienceList workExperienceEntries =
    div [] (List.map (\item -> div [] [ viewWorkExperience item ]) workExperienceEntries)


view : Model -> Html Msg
view model =
    div []
        [ button [onClick (Redirect DefaultRoute)] [text "Home"]
        , button [onClick (Redirect ProjectRoute)] [text "Projects"]
        , viewWorkExperienceList Content.workExperience]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Work", body = [ view model ]}
