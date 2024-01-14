main = putStrLn myhtml 
myhtml = html_ (body_ "Hello, World!")
html_ content = "<html>" <> content <> "</html>"
body_ content = "<body>" <> content <> "</body>"
head_ content = "<head>" <> content <> "</head>"
title_ content = "<title>" <> content <> "</title>"
