module Main (main) where

import Graphics.Gloss

import Renderer (renderer)
import InputHandler (inputHandler)
import Update (update)
import Types

initialWorld :: World
initialWorld = World { background = [], focus = ball, drawing = True}
    where
        ball = Sprite (circleSolid 10) red (0, 0)


main :: IO ()
main = play window white 60 initialWorld renderer inputHandler update
    where
        window = InWindow "my cool window" (500, 500) (400, 200)
