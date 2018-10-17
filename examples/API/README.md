# API Examples

<!-- -------------------------------------------------------- -->

## APMConnect
<details><summary>Invoke APM APIs with zoneID, headers, pagination, and handle timeout</summary>

<br/>
No content at this time.

</details>
<br/>

<!-- -------------------------------------------------------- -->

## Invoke Salesforce API
<details><summary>Get a token to invoke a Salesforce API; Authenticate and place in cache</summary>

#### Key Attributes
* EvaluateSONPath: Use JSONPath expressions to get data from JSON objects.
* InvokeHTTP: Processor is used to invoke external API’s
* ReplaceText: Replace the content of a flowfile.
* PutDistributedMapCache: Put a key/value pair in a DistributedMapCache
* FetchDistributedMapCache: Get a value from cache based on key.

#### Developer Notes
* Use this template as a starting point for understanding how to authenticate with Salesforce, then invoke Salesforce API’s for various objects using JSON requests.

</details>
<br/>

<!-- -------------------------------------------------------- -->

## Invoke SOAP Web Service API 
<details><summary>Invoke a SOAP API hosted on SAP PI with Basic Auth</summary>

#### Key Attributes
* `HTTPHandleRequest` / `HttpHandleResponse`: creates a Jetty server that listens on a port and receives/response to client requests
* `InvokeHTTP`: invoke external API’s
* `TransformXML`: transform XML using XSLT

#### Developer Notes
* Use this template as a starting point for understanding how to invoke external webservice API’s, in this particular case a SOAP WSDL webservice.

</details>
<br/>

<!-- -------------------------------------------------------- -->

## Nifi System Diagnostics API
<details><summary>Invoke Nifi API to authenticate users and get system diagnostics</summary>

#### Key Attributes
- `GenerateFlowFile`: generates flowfile with the username and password to be passed as data for the access token API
- `InvokeHTTP`: used to fetch access token and invoke system diagnostics API
- `ExtractText`: creates access_token flowfile attribute
- `EvaluateJsonPath`: extracts specified values from the JSON response based on the
path
- `ReplaceText`: replaces the flowfile content with text created from extracted values
- `PutFile`: adds incoming flowfile as file in the specified folder path

#### Controller Services Used
- `StandardSSLContextService`: helps to communicate with secure API endpoint(HTTPS)

#### Developer Notes
- `StandardSSLContextService` controller service requires Truststore filepath and password for InvokeHTTP to be able to communicate with the secure API endpoint
- `PutFile` requires absolute folder path

</details>
</br>

<!-- -------------------------------------------------------- -->

## Simple REST API Creation
<details><summary>Create API endpoints for  GET and POST operations; Requires Postgres DB to store and fetch data </summary>

#### Key Attributes
* `HandleHttpRequest`: creates API endpoint by specifying the port and path to be listening to. Behaves as GET or POST based on the value set.
* `HandleHttpResponse`: sends API response along with the specified status code 
* `PutSQL` / `ExecuteSQL`: executes the SQL command on the specified (postgres)
database. PutSQL inputs the record passed as data for the POST call into “data” table.
ExecuteSQL runs the select query for the GET call to fetch the details from “data” table. 
* `ConvertJSONToSQL`: converts flat JSON into corresponding SQL statement using the
details of “data” table

#### Controller Services Used
* `StandardHttpContextMap`: allows to store & retrieve HTTP requests & responses
* `DBCPConnectionPool`: connects to the specified postgres database

#### Developer Notes
* The template requires Postgres DB with following requirements: 
	* DB Name: postgres
	* User: postgres
	* Password: postgres
	* Table Name: data
 
	 ```
	{
		“column name” : “type”
		id : character varying,
		city : character varying,
		maxtemp : character varying,
		mintemp : integer,
		degree : character varying
	}
    ```
* Database Driver Location: Postgresq JDBC Driver jar location (download from https://jdbc.postgresql.org/download.html)
* Carefully check that database configuration details are updated across the **entire** flow when configuring a new database connection.
* The Post API requires JSON data in the format Example:
	```
	{
		"id": "222", 
		"city": "Pune", 
		"maxtemp": 34, 
		"mintemp": 28, 
		"degree": "C"
	}
	```

</details>
<br/>

<!-- -------------------------------------------------------- -->

<hr/>
<br/>
<a href="#top">Back to Top</a>
