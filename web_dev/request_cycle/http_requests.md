** What are some common HTTP status codes? 

1xx Informational --> 100 Continue, 101 Switching Protocols, 102 Processing (WebDAV)

2xx Success       --> 200 OK, 201 Created, 202 Accepted, 203 Non-Authoritative Information, 204 No Content,205 Reset Content.

3xx Redirection   --> 300 Multiple Choices, 301 Moved Permanently, 302 Found, 303 See Other, 304 Not Modified, 305 Use Proxy

4xx Client Error  --> 400 Bad Request, 401 Unauthorized, 402 Payment Required, 403 Forbidden, 404 Not Found

5xx Server Error  --> 500 Internal Server Error


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

** What is the difference between a GET request and a POST request? When might each be used?

The GET method requests a representation of the specified resource. Requests using GET should only retrieve data. The POST method is used to submit an entity to the specified resource, often causing a change in state or side effects on the server. Maybe post is best used when updating or modifying a resource.





Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

-- Cookies remember stateful information (such as items added in the shopping cart in an online store), they also are used as way to authenticate wether a user is logged into a wite or not.