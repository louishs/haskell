{-# LANGUAGE DeriveGeneric #-}
import Data.Aeson
import Data.Text
import Control.Applicative
import Control.Monad
import qualified Data.ByteString.Lazy as B
import GHC.Generics 
import Happstack.Server (simpleHTTP, ServerPartT)
import Network.HTTP as N

jsonURL :: String
jsonURL = "http://www.phoric.eu/temperature.json"

getJSON :: IO String
getJSON = N.simpleHTTP (getRequest jsonURL) >>= getResponseBody
  

