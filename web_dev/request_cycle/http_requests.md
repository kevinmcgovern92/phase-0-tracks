#1: What are some common HTTP status codes?
  - Some of the most common are:
    200 - standard response for a successful request. Can be used with GET, HEAD, POST, and TRACE methods.

    201 - successful request that results in the creation of a new resource. Can be used with POST or PUT, most commonly seen with POST.

    204 - successful request, but no content returned.

    304 - Used for conditional GET calls to reduce bandwidth usage.
      - 3** status codes indicate that further action needs to be taken by the user agent in order to fill the request.

    400 - General error when fulfilling the request would cause an invalid state.
      - 4** status codes all indicate client side error.

    403 - Error code for user not authorized to perform the operation or the resource is unavailable for some reason

    404 - probably the most common error code in the 400s, used when the requested resource isn't found: either it doesn't exist or it's a 401/403 error that someone wants covered for security purposes

    409 - error code for when fulfilling a request would resulr in resource conflict.

    500 - general catch all error when the server side throws an exception
      - 5** error codes all indicate server side error


#2: What is the difference between a GET request and a POST request? When might each be used?
  - At the most basic level, the GET method requests data from a given source, while the POST method submits data to a specific resource for processing

  - GET requests are idempotent, so GET requests view something without changing it. So for a search you might use GET as opposed to POST

  - POST requests should be used for editing information as they have side effects, and when dealing with more secure data. (still not secure, but we're not dealing with HTTPS right now)

#3: What is a cookie? How does it relate to HTTP requests?
  - A cookie is a data packet designed as a reliable mechanism for websites to remember stateful information or store the user's browsing activity.
    - So if you add something to your shopping cart on Amazon, that's a cookie. And autofill results are also stored in cookies.
    - One of the most common types of cookies is the authentication cookie, which basically checks whether or not a user is logged in, and which account they're associated with.
    - There are also tracking cookies, because advertisers are a bunch of dicks.