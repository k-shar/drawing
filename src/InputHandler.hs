module InputHandler (inputHandler) where

import Graphics.Gloss.Interface.Pure.Game (Event (..), KeyState (Down), SpecialKey (KeySpace, KeyShiftL), Key (SpecialKey))
import Types

inputHandler :: Event -> World -> World
inputHandler (EventMotion newPos) world =  world { focus = (focus world) {pos = newPos} }
inputHandler (EventKey (SpecialKey KeySpace) Down _ _) world = world { drawing = not $ drawing world }   
inputHandler (EventKey (SpecialKey KeyShiftL) Down _ _) world = world { background = [] }   
inputHandler _ world = world

