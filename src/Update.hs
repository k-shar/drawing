module Update (update) where

import Types

update :: Float -> World -> World
update _ (World { drawing = True, background = b, focus = f }) = World { background = f : b, focus = f, drawing = True}   
update _ world = world 
