module Views.NotFound exposing (..)

import Html exposing (Html, text, div, h2, h3, h4, p, button, ul, a, li, img)
import Html.Attributes exposing (src, href)
import Html.Events exposing (onClick)

import Types exposing (..)

view : Model -> Html Msg
view model =
    div []
        -- [ button [onClick (Redirect DefaultRoute)] [text "Home"]
        [ a [href "/"] [text "Home"]
        , text "Not a valid route!" ]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Work", body = [ view model ]}
