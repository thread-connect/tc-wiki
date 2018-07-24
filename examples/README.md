# Example Flows

### API Invocation from Flow
This is an example flow for invoking an API within your data flow. 

### Basic API
This is an example flow showing the use of HttpRequest/HttpResponse processors which will allow a flow to accept incoming HTTP requests.

### CSV Filename to Table
This is an example flow showing how one might create a SQL statement from the contents of a CSV file for later insertion into some database. This example has been depreciated by the PutDatabaseRecord processor.

### Example Flows Grouped
This flow contains API Invocation from Flow, Basic API, CSV Filename to Table, Route on Content/Attribute, SimpleJoltTransformation, and Retry Loop example flows.

### Route on Content/Attribute
This flow contains an example of routing a flowfile to a path based on text within the content of that FlowFile. This flow also contains an example of routing a flowfile to a path based on a value contained within some specific attribute.

One example which can highlight the use of both the RouteOnContent and RouteOnAttribute processors is routing of a flowfile based on an incoming HTTP request.

* RouteOnContent processor could route the flowfile to some destination based on the body of the HTTP request
* RouteOnAttribute processor could route the flowfile to some destination based on type of incoming HTTP request. This processor would route the flowfile based on the value of attribute *http.method* 


### Simple Jolt Transformation
This flow shows the use of a one-to-one Jolt Transformation.

### Retry Loop
This flow shows how one might loop a flowfile a number of times before sending it to the next destination.
