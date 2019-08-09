module Main exposing (..)

import Browser
import Array
import Html exposing (Html, text, div, h2, h3, h4, p, button, ul, a, li, img)
import Html.Attributes exposing (src, href)
import Html.Events exposing (onClick)

import State exposing (..)
import Types exposing (..)
import Content exposing (workExperience, projects)
import Routing exposing (view)


---- PROGRAM ----

main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }