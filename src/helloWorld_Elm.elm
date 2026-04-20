-- Requirements: Elm compiler installed (https://elm-lang.org/)
-- Execution: elm make helloWorld_Elm.elm --output=hello.html && open hello.html

import Html exposing (text)

-- main is the entry point for Elm applications.
-- In this simple case, it just renders a text node.
main =
    text "Hello, World!"
