module Types where

import Graphics.Gloss.Data.Point (Point)
import Graphics.Gloss (Picture, Color)

type Background = [Sprite]

data World = World 
    { background :: Background
    , focus :: Sprite
    , drawing :: Bool
    }

data Sprite = Sprite 
    { pic :: Picture
    , col :: Color
    , pos :: Point
    }

