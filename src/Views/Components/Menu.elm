module Views.Components.Menu exposing (..)

import Html exposing (Html, text, div, ul, a, li)
import Html.Attributes exposing (href, class)

import Types exposing (..)
import Views.Components.Link exposing (view)

view : Html Msg
view =
    ul [ class "menu" ] [ 
        li [ class "menu" ] [(Views.Components.Link.view "/" "Home")], 
        li [ class "menu" ] [(Views.Components.Link.view "/work" "Work")], 
        li [ class "menu" ] [(Views.Components.Link.view "/project" "Projects")],
        li [ class "menu" ] [(Views.Components.Link.view "/interest" "Interests")]]