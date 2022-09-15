# How to use this app
First navigate to Simple-Fortune-Cookie-Metropolia dir.    
You need to open run vagrant. To do that, open cmd.    
First run command:
```
vagrant up
```
When this is done, then you need to log in
```
vagrant ssh
```
After you have logged in, then you can navigate to backend folder and give build command to build backend server and run it.

```console
vagrant@ubuntu-jammy:~/project/backend$ go build
vagrant@ubuntu-jammy:~/project/backend$ go run .
2022/09/15 10:03:40 redis dial tcp 127.0.0.1:6379: connect: connection refused
```
connection refused is ok if you don't have redis installed.    
Next you can run frontend server by opening new cmd to frontend folder and logging into vagrant with vagrant ssh. Then build and run frontend.

```console
vagrant@ubuntu-jammy:~/project/frontend$ go build
vagrant@ubuntu-jammy:~/project/frontend$ go run .
```

Frontend is running in http://localhost:8080/ and backend in http://localhost:9000/     

Tests are found in robot folder. You need to first have both servers running before running tests.    
Open cmd in Simple-Fortune-Cookie-Metropolia dir and give command to run tests:

```console
robot robot\tests\*
```

If you want to see log/reports, just give command:

```console
start log.html
```
In test cases you can find all test cases. Current test cases are:
* Open Browser to main page
* Get All Fortunes shows fortunes
* User can add a fortune successfully
* Verify That Cookie changes has no operation yet.