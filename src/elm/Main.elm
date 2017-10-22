module Main exposing (..)

import Html exposing (Html, program, text)

-- Model
type alias Model = String

-- Message
type Msg = NoOp

-- View
view : Model -> Html Msg
view model =
    text model

-- Update
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        NoOp -> model ! []

-- main
main : Program Never Model Msg
main = program
        { init = "Hello, World" ! []
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }