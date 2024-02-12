### Hexlet tests and linter status:
[![Actions Status](https://github.com/goryay/python-project-52/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/goryay/python-project-52/actions)
<a href="https://codeclimate.com/github/goryay/python-project-52/maintainability"><img src="https://api.codeclimate.com/v1/badges/ddfd2e3ab4610dacd1bc/maintainability" /></a>

[WEB](https://task-manager-fwnu.onrender.com/) version

# Task manager
Task manager is the webapp of managing a task through its lifecycle.
It involves planning, testing, tracking.  
s.v. [wiki](https://en.wikipedia.org/wiki/Task_management)

## How to install the app:
Clone the application from GitHub and install the necessary:  
```
git clone git@github.com:goryay/python-project-52.git
```    
```
make install
```  

Create '.env' file in the root folder and add the following variables to it:
```  
SECRET_KEY=some_secret_key  
DEBUG=False
```  
Create migrations and apply them to the database:  
```
make migrate
```

Run the application local:  
```
make dev
```  

Go to the browser address http://localhost:8000/
