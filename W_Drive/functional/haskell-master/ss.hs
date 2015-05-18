{-# LANGUAGE OverloadedStrings #-}
module Main where

import Control.Monad    (msum, forM_)
import Happstack.Server 
import Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes as A hiding (method, dir)


main :: IO ()
main = simpleHTTP nullConf $ msum
       [ do dir "foo" $ do method GET
                           ok $ toResponse $ ("You did a GET request on /foo\n" :: String)
       , do method GET
            getPage
       , do method POST
            ok $ toResponse $ ("You did a POST request.\n" :: String)
       ]

getPage :: ServerPart Response
getPage = ok $ toResponse $ 
	html $ do
		H.head $ do
			H.title "You did a Get request"
			h1 "JSON temperature manipulation"
		H.body $ do
			H.form ! A.id "contact_form" ! action "/jsonurl" ! enctype "multipart/form-data" $ do
			    H.div ! class_ "row" $ do
				H.label ! for "JSONurl" $ "URL for JSON data:"
				br
				input  ! A.id "url" ! class_ "input" ! name "url" ! type_ "url" ! value "" ! size "30"
				br
			    H.div ! class_ "row" $ do
				H.label ! for "avg" $ "Find average:"
				br
				input ! A.id "avg" ! class_ "input" ! name "avg" ! type_ "radio"
				br
			    H.div ! class_ "row" $ do
				H.label ! for "hot" $ "Find hottest day:"
				br
				input ! A.id "hot" ! class_ "input" ! name "hot" ! type_ "radio"
				br
			    input ! A.id "submit_button" ! type_ "submit" ! value "Compute"

