# BBC Programming Task

The task is to write a program that makes http requests and reports on certain properties of the responses it receives. Please write your code in Java or Python. If you wish to use other languages, please check with us. Your code should be sent to us as a zipped tar archive (.tgz file). We would like to see your version control commit history so please include git or svn directory structure in the tar archive. Please provide instructions so that we can install, test and run your program on a Linux/Unix
like platform. If we invite you for an interview, we may ask you to modify your program to meet an additional requirement or make improvements.

## Requirements

- The program should be invoked from the command line and consume its input from stdin.
- The program output is written to stdout and errors are written to stderr.
- Input format is a newline separated list of web addresses, such as:

> - http://www.bbc.co.uk/iplayer
> - https://google.com
> - bad://address
> - http://www.bbc.co.uk/missing/thing
> - https://not.exists.bbc.co.uk/
> - http://www.oracle.com/technetwork/java/javase/downloads/index.html
> - https://www.pets4homes.co.uk/images/articles/1646/large/kitten.jpg
> - http://site.mockito.org/

- The program should make an GET request to each valid address in its input.
- The program should output status code, content length and date-time of the response.
These should be extracted from the http response headers.
- The output should be formatted as a stream of short JSON documents such as
```
{
"Url": "http://www.bbc.co.uk/iplayer",
"Status_code": 200,
"Content_length": 209127,
"Date": "Tue, 25 Jul 2021 17:00:55 GMT"
}
{
"Url": "https://google.com",
"Status_code": 302,
"Content_length": 262,
"Date": "Tue, 25 Jul 2021 17:00:55 GMT"
}
{
"Url": "bad://address",
"Error": "invalid url"
}
```
- The program should identify and report invalid URLs, i.e., those that don't start with
http:// or https:// or contain characters not allowed in a URL.
- The program should include unit tests and it should be possible to execute these while
offline.

## Assessment criteria
We will assess your submission based on the following:
- How well the program meets the requirements.
- The structure and clarity of your code and tests.
- Evidence that you have taken a test-driven approach during development.
- The quality of instructions for installing, testing and running the program.
Good luck!
