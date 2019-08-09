module Views.DefaultView exposing (..)

import Array
import Html exposing (Html, text, div, h2, h3, h4, p, button, ul, a, li, img)
import Html.Attributes exposing (src, href, class)
import Html.Events exposing (onClick)

import Types exposing (..)
import Content exposing (workExperience, projects)

viewWorkExperienceSnippet: WorkExperienceEntry -> Html Msg
viewWorkExperienceSnippet workExperienceEntry = 
    div [] 
        [ h4 [] [text (String.append (String.append workExperienceEntry.title " at ") workExperienceEntry.company)]
        , div [] [text workExperienceEntry.blurb] 
        ]

viewProjectEntrySnippet : ProjectEntry -> Html Msg
viewProjectEntrySnippet project = 
    div [] 
        [ h4 [] [text project.title]
        , div [] [text project.blurb] 
        ]

view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , h3 [] [ text "I'm currently on wrapping up my M.S (ye I'm big boi I know) in Computer Science at Northeastern University. I just graduated from Northeastern with a B.S. in Computer Science and Biology this past May!" ]
        , ul [] [
            li [] [a [href "work"] [text "Work Experience"]]
            , li [] [a [href "project"] [text "Projects"]]
        ]
        , div [ class "row" ]
            [ h3 [] [ text "Work Experience" ]
            , div [ class "nav"]  [ button [ onClick LeftWork ] [ text "<" ]]
            , div [ class "nav-middle" ] [ viewWorkExperienceSnippet (Maybe.withDefault { title = "", company = "", blurb = "", description = "", link = "" } (Array.get model.workIndex (Array.fromList Content.workExperience))) ]
            , div [ class "nav" ] [ button [ onClick RightWork ] [ text ">" ]]
            ]
        , div [ class "row" ]
            [ h3 [] [text "Featured Projects"]
            , div [ class "nav" ]  [ button [ onClick LeftProject ] [ text "<" ]]
            , div [ class "nav-middle" ] [ viewProjectEntrySnippet (Maybe.withDefault { title = "", blurb = "", description = "" } (Array.get model.projectIndex (Array.fromList Content.projects))) ]
            , div [ class "nav" ]  [ button [ onClick RightProject ] [ text ">" ]]
            ]
        ]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Home", body = [ view  model ] }