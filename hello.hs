main = putStrLn myhtml

myhtml = makehtml "My page title" "My page content"
 
makehtml :: String -> String -> String
makehtml title content = html_ (head_ (title_ title) <> body_ content)

html_ content = "<html>" <> content <> "</html>"
body_ content = "<body>" <> content <> "</body>"
head_ content = "<head>" <> content <> "</head>"

title_ :: String -> String
title_ content = "<title>" <> content <> "</title>"
