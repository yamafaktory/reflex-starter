module Main where

import Reflex.Dom

main :: IO ()
main = mainWidget $ el "div" $ do
  el "h1" $ text "reflex-starter"
  el "a" $ text "Now you can start playing with Reflex!"
