module ElmCounter exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, type_)
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


main : Html Msg
main =
    view initialModel
