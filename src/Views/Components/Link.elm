module Views.Components.Link exposing (..)

import Html exposing (Html, text, a)
import Html.Attributes exposing (href, class, target)

import Types exposing (..)

view : String -> String -> Html Msg
view link display =
    if (String.startsWith "/" link) 
    then a [ href link ] [ text display ]
    else a [ href link, target "_blank"] [ text display ]