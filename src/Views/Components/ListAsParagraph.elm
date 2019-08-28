module Views.Components.ListAsParagraph exposing (..)

import Html exposing (Html, text, div, p)
import Html.Attributes exposing (class)

import Types exposing (..)


view : List String -> Html Msg
view list =
    div [ class "about-content" ] (List.map (\item -> p [] [ text item ]) list)