module Renderer (renderer) where

import Graphics.Gloss
import Types

renderer :: World -> Picture
renderer w = pictures $ map render $ focus w : background w 

render :: Sprite -> Picture
render sprite = uncurry translate (pos sprite) . color (col sprite) $  pic sprite
