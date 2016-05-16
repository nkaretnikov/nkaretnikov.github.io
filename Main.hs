{-# LANGUAGE OverloadedStrings #-}

import Hakyll

config :: Configuration
config = defaultConfiguration
  { destinationDirectory = "."
  }

main :: IO ()
main = hakyllWith config $ do
  -- Pages.
  match "*.md" $ do
    route $ setExtension "html"
    compile $ pandocCompiler
      >>= relativizeUrls
