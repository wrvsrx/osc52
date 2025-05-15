{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Base64.Types (extractBase64)
import Data.Text.Encoding.Base64 (encodeBase64)
import Data.Text.IO as T

main :: IO ()
main = T.getContents >>= (\cnt -> T.putStr $ "\ESC]52;c;" <> extractBase64 (encodeBase64 cnt) <> "\BEL")
