main :: IO ()
main = putStrLn (render_ myhtml)

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

newtype Html = Html String
newtype Structure = Structure String
type Title = String

html_ :: Title -> Structure -> Html
html_ title content =
  Html
    ( el
        "html"
        ( el "head" (el "title" title)
            <> el "body" (getStructureString content)
        )
    )

body_ :: String -> Structure
body_ = Structure . el "body"

head_ :: String -> Structure
head_ = Structure . el "head"

title_ :: String -> Structure
title_ = Structure . el "title"

p_ :: String -> Structure
p_ = Structure . el "p"

h1_ :: String -> Structure
h1_ = Structure . el "h1"

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

getStructureString :: Structure -> String
getStructureString (Structure str) = str

append_ :: Structure -> Structure -> Structure
append_ (Structure s1) (Structure s2) = Structure (s1 <> s2)

render_ :: Html -> String
render_ html =
  case html of
    Html str -> str

