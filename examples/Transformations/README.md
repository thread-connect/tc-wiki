# Transformation Examples

<!-- -------------------------------------------------------- -->

## JOLT Processor
<details><summary>Transform JSON using JOLT</summary>


#### Key Attributes
- `Handle HttpRequest`: Listens for incoming requests
	- Deault port is 8094
- `UpdateAttribute`: Adds an extra ttribute to the file
- `ReplaceText`: Replaces the flowfile content with a predetermined JSON body of text
- `JoltTransformJSON`: A JSON-to-JSON transformation takes place using JOLT transformation language
- `HandleHttpResponse`: Send a repsonse with the body of the transformed content back to the requestor

#### Developer Notes
- `HandleHttpRequest`
	- This processor requres the `StandardHttpContextMap` to be enabled for it to run
	- The `StandardHttpContextMap` specified in this processor must be the same `StandardHttpContextMap` specified in `HandleHttpResponse` processor

<br/> 
Four examples of JSON-to-JSON transformations using JOLT can be found in the Group_of_Jolt_Examples.xml template. 

See (detailed documentation)[../Transformations/GroupOfJoltExamples.pdf] for more details.

</details>
<br/>

<!-- -------------------------------------------------------- -->

## JSON Transformation Using Mapper
<details><summary>Use TC Mapper to transform JSON</summary>

#### Key Attributes
- `InvokeHttp`: invokes the weather API endpoint
- `ThreadConnectMapper`: transforms incoming JSON data into required JSON format
using jolt-specs.
- `EvaluateJsonPath`: extracts specified values from the incoming JSON based on the
path.
- `ReplaceText`: creates SQL statement with extracted flowfile attributes.
- `PutSQL`: executes the SQL command on the specified (postgres) database. PutSQL
inputs the record passed as data into “test” table.

#### Controller Services Used
- `StandardSSLContextService`: helps to communicate with secure API endpoint(HTTPS)
- `DBCPConnectionPool`: connects to the specified postgres database

#### Mapping Instructions
See [detailed documentation](../Transformations/Mapper_(JSON_Transformation).pdf)

</details>
<br/>

<!-- -------------------------------------------------------- -->

## XML Transformation Using Mapper
<details><summary>Use TC Mapper to transform XML </summary>

#### Key Attributes
- `InvokeHttp`: invokes the weather API endpoint
- `ThreadConnectMapper`: transforms incoming JSON data into required JSON format
using jolt-specs.
- `EvaluateJsonPath`: extracts specified values from the incoming JSON based on the
path.
- `ReplaceText`: creates SQL statement with extracted flowfile attributes.
- `PutSQL`: executes the SQL command on the specified (postgres) database. PutSQL
inputs the record passed as data into “test” table.

#### Controller Services Used
- `StandardSSLContextService`: helps to communicate with secure API endpoint(HTTPS)
- `DBCPConnectionPool`: connects to the specified postgres database

#### Mapping Instructions
See [detailed documentation](../Transformations/Mapper_(XML_Transformation).pdf)

</details>
<br/>

<!-- -------------------------------------------------------- -->

<hr/>
<br/>
<a href="#top">Back to Top</a>
