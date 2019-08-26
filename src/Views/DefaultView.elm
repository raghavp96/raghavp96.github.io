module Views.DefaultView exposing (..)

import Array
import Html exposing (Html, text, div, br, h2, h3, h4, h5, button)
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
            h2 [ class "header" ] [ text "Hello hello, I'm Raghav."],
            h5 [ class "header" ] [ text "(That's short for Raghavprasanna Rajagopalan)" ],
            h3 [] [ text "I'm a software developer studying at Northeastern University. I build things! (I'm like Bob the Builder, but for coding.) I'm currently on wrapping up my M.S (ye I'm big boi I know) in Computer Science, specializing in Artificial Intelligence. I just graduated from Northeastern with a B.S. in Computer Science and Biology this past May!" ],
            h4 [ class "header" ] [ text "By the way, I'm looking for a job for after I graduate ;)"],
            Views.Components.Links.view ], 
        div [ class "row" ] [ 
            br [][], 
            h3 [ class "header nav-heading" ] [ text "Where I've worked" ],
            div [ class "nav"]  [ button [ onClick LeftWork ] [ text "<" ]],
            div [ class "nav-middle" ] [ viewWorkExperienceSnippet (Maybe.withDefault { title = "", company = "", blurb = "", description = [""], link = "", tags = [] } (Array.get model.workIndex (Array.fromList Content.workExperience))) ],
            div [ class "nav" ] [ button [ onClick RightWork ] [ text ">" ]]],
        div [ class "row" ] [ 
            br [][], 
            h3 [ class "header nav-heading" ] [text "What kinds of projects I've done on my own"],
            div [ class "nav" ]  [ button [ onClick LeftProject ] [ text "<" ]], 
            div [ class "nav-middle" ] [ viewProjectEntrySnippet (Maybe.withDefault { title = "", blurb = "", description = "", tags = [] } (Array.get model.projectIndex (Array.fromList Content.projects))) ], 
            div [ class "nav" ]  [ button [ onClick RightProject ] [ text ">" ]]],
            br [][]]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Home", body = [ view  model ] }