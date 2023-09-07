# Asychronous programming

this allows our applications to complete time consuming tasks.:

1. retrieving images from the web
2. writing data to the web server

in flutter, you can achieve this by leveraging `Future` and `async/await` patterns. 

## Future

when we write code, we essentially expect them to run one line after the other, what happens when some line is taking longer than usual to execute? Your program will just hang and stay unresponsive?

