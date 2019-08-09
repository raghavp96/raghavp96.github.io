module State exposing (..)

import Browser
import Browser.Navigation as Nav
import Url

import Types exposing (..)
import Content exposing (workExperience, projects)

init : () -> Url.Url ->  Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    (   {
        key = key
        , url = url
        , workIndex = 0
        , projectIndex = 0
        }, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LeftWork -> 
            ( { model | workIndex = if model.workIndex == 0 then 0 else model.workIndex - 1  }, Cmd.none )
        RightWork -> 
            let workLength = List.length Content.workExperience
            in ( { model | workIndex = if model.workIndex == workLength - 1 then workLength - 1 else model.workIndex + 1 }, Cmd.none )
        LeftProject -> 
            ( { model | projectIndex = if model.projectIndex == 0 then 0 else model.projectIndex - 1  }, Cmd.none )
        RightProject -> 
            let projectLength = List.length Content.projects
            in ( { model | projectIndex = if model.projectIndex == projectLength - 1 then projectLength - 1 else model.projectIndex + 1 }, Cmd.none )
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )
        UrlChanged url ->
            ( { model | url = url }
            , Cmd.none
            )