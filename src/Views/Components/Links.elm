module Views.Components.Links exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (href, class)

import Types exposing (..)
import Views.Components.Link exposing (view)

view : Html Msg
view =
    div [] [
        Views.Components.Link.view "/docs/resume.pdf" "Resume",
        text " / ",
        Views.Components.Link.view "https://github.com/raghavp96/" "Github",
        text " / ",
        Views.Components.Link.view "https://www.linkedin.com/in/raghavp96/" "LinkedIn",
        text " / ",
        Views.Components.Link.view "mailto:rajagopalan.rag@husky.neu.edu" "Email",
        text " / ",
        Views.Components.Link.view "https://www.instagram.com/raghavp96/" "Instagram"
    ]