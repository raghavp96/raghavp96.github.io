module Views.Components.Tag exposing (..)

import Html exposing (Html, text, div, ul, li)
import Html.Attributes exposing (class)

import Types exposing (..)


viewTag : String -> Html Msg
viewTag str =
    div [ class "tag" ] [ 
        div [ class "tag-rectangle" ] [ text str ]]