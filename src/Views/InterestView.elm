module Views.InterestView exposing (..)

import Html exposing (Html, text, div, h1, br)
import Html.Attributes exposing (class)

import Types exposing (..)
import Views.Components.Menu exposing (view)


view : Model -> Html Msg
view model =
    div [ class "wrapper" ] [
        Views.Components.Menu.view,
        br [][], 
        div [ class "row" ] [
            h1 [] [text "Interests coming soon..." ]]]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Interests", body = [ view model ]}
