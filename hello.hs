main = putStrLn myhtml

myhtml = makehtml "My page title" "My page content"
 
makehtml :: String -> String -> String
makehtml title content = html_ (head_ (title_ title) <> body_ content)

html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

head_ content = "<head>" <> content <> "</head>"

title_ :: String -> String
title_ content = "<title>" <> content <> "</title>"

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
