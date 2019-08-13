module Views.DefaultView exposing (..)

import Array
import Html exposing (Html, text, div, br, h2, h3, h4, button)
import Html.Attributes exposing (src, href, class)
import Html.Events exposing (onClick)

import Types exposing (..)
import Content exposing (workExperience, projects)
import Views.Components.Menu exposing (view)
import Views.Components.Links exposing (view)

viewWorkExperienceSnippet: WorkExperienceEntry -> Html Msg
viewWorkExperienceSnippet workExperienceEntry = 
    div [] [ 
        h4 [] [text (String.append (String.append workExperienceEntry.title " at ") workExperienceEntry.company)], 
        div [] [text workExperienceEntry.blurb]]

viewProjectEntrySnippet : ProjectEntry -> Html Msg
viewProjectEntrySnippet project = 
    div [] [ 
        h4 [] [text project.title], 
        div [] [text project.blurb]]

view : Model -> Html Msg
view model =
    div [ class "wrapper" ] [
        Views.Components.Menu.view, 
        div [ class "row" ] [
            br [][], 
            h2 [] [ text "I'm Raghav."],
            h3 [] [ text "I build things. I'm like Bob the Builder, but for coding. Please hire me." ],
            Views.Components.Links.view ], 
        div [ class "row" ] [
            h3 [] [ text "I'm currently on wrapping up my M.S (ye I'm big boi I know) in Computer Science at Northeastern University. I just graduated from Northeastern with a B.S. in Computer Science and Biology this past May!" ]],
        div [ class "row" ] [ 
            h3 [ class "nav-heading" ] [ text "Where I've worked" ],
            div [ class "nav"]  [ button [ onClick LeftWork ] [ text "<" ]],
            div [ class "nav-middle" ] [ viewWorkExperienceSnippet (Maybe.withDefault { title = "", company = "", blurb = "", description = "", link = "" } (Array.get model.workIndex (Array.fromList Content.workExperience))) ],
            div [ class "nav" ] [ button [ onClick RightWork ] [ text ">" ]]],
        div [ class "row" ] [ 
            h3 [ class "nav-heading" ] [text "What kinds of projects I've done on my own"],
            div [ class "nav" ]  [ button [ onClick LeftProject ] [ text "<" ]], 
            div [ class "nav-middle" ] [ viewProjectEntrySnippet (Maybe.withDefault { title = "", blurb = "", description = "" } (Array.get model.projectIndex (Array.fromList Content.projects))) ], 
            div [ class "nav" ]  [ button [ onClick RightProject ] [ text ">" ]]]]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Home", body = [ view  model ] }