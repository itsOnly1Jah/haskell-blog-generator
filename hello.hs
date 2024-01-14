main = putStrLn myhtml 
myhtml = html_ (body_ "Hello, World!")
html_ content = "<html>" <> content <> "</html>"
body_ content = "<body>" <> content <> "</body>"
