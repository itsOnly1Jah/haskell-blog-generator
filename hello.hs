import Html

main :: IO ()
main = putStrLn (render myhtml)

myhtml :: Html
myhtml =
  html_
    "My page title"
    ( append_
        (h1_ "My page heading")
        ( append_
            (p_ "My page paragraph")
            (p_ "My Second Paragraph")
        )
    )
