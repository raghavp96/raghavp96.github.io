module Views.Components.Link exposing (..)

import Html exposing (Html, text, a)
import Html.Attributes exposing (href, class, target, download)

import Types exposing (..)

view : String -> String -> Html Msg
view link display =
    if (String.contains ".pdf" link)
    then a [ href link, download link ] [ text display ]
    else
        if (String.startsWith "/" link) 
        then a [ href link ] [ text display ]
        else a [ href link, target "_blank"] [ text display ]