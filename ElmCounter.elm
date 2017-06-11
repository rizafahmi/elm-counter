module ElmCounter exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)


type Msg
    = Increment
    | Decrement


type alias Model =
    { counter : Int }


initialModel : Model
initialModel =
    { counter = 0
    }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | counter = model.counter + 1 }

        Decrement ->
            { model | counter = model.counter - 1 }


view : Model -> Html Msg
view model =
    div
        []
        [ h1 [] [ text "Elm Counter!" ]
        , button
            [ onClick Decrement ]
            [ text "-" ]
        , span [] [ text (toString model.counter) ]
        , button [ onClick Increment ] [ text "+" ]
        ]


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
