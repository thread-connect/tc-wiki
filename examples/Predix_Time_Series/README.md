# Predix Time Series

### Get Tags
<details><summary>Get OAuth token and then invoke Timeseries GET/POST APIs</summary>

#### Key Attributes
* `GenerateFlowFile`: This processor creates a flowfile to start the flow on some timely basis.
* `InvokeHttp` (1): `getPredixToken` – This processor gets the generated flowfile and uses it to send a request to get a Predix authentication token.
	* The attribute TokenResponse is used to hold the response containing the authentication token.
* `UpdateAttribute`: This processor truncates the text of the TokenResponse attribute so it contains nothing but the token itself.

#### Developer Notes
* `InvokeHttp` (1): `getPredixToken` – This processor requires a UAA instance already be set up.
	* It requires Basic Authorization string to retrieve the token from that UAA instance.
	* Note that the outgoing flowfile is the Original flowfile and not the response from the invocation.
* `InvokeHttp` (2): Get Tags – This processor requires input of the `predix-zone-id	` referencing your Predix Time Series service
 	* The Original and Response connections outgoing from this processor serve only to show that the obtained tags can be placed in either the body of the flowfile or as an attribute within the flowfile.

</details>
<br/>

<!-- -------------------------------------------------------- -->

## Querying Datapoints 
<details><summary>Query a Predix Time Series instance for different types of datapoints</summary>

### Datapoint Types
* [Aggregation of Datapoints](../Predix_Time_Series/Querying_Datapoints/Aggregation-Datapoints.xml)
* [Grouped Datapoints](../Predix_Time_Series/Querying_Datapoints/Grouped-Datapoints.xml)
* [Latest Datapoints](../Predix_Time_Series/Querying_Datapoints/Latest-Datapoints.xml)
* [Limited Datapoints](../Predix_Time_Series/Querying_Datapoints/Limited-Datapoints.xml)
* [Ordered Datapoints](../Predix_Time_Series/Querying_Datapoints/Ordered-Datapoints.xml)
* [Time Bound Datapoints](../Predix_Time_Series/Querying_Datapoints/Time-Bounded-Datapoints.xml)

#### Key Attributes
* `GenerateFlowFile`: This processor creates a flowfile to start the flow on some timely basis.
* `InvokeHttp` (1): `getPredixToken` – This processor gets the generated flowfile and uses it to send a request to get a Predix authentication token.
	* The attribute TokenResponse is used to hold the response containing the authentication token.
* UpdateAttribute: This processor truncates the text of the TokenResponse attribute so it contains nothing but the token itself.

#### Developer Notes
* `InvokeHttp` (1):`getPredixToken` – This processor requires a UAA instance already be set up.
	* It requires Basic Authorization string to retrieve the token from that UAA instance.
	* Note that the outgoing flowfile is the Original flowfile and not the response from the invocation.
* `InvokeHttp` (2): `[Datapoint Type] Datapoints Request` – This processor requires input of the `predix-zone-id`referencing your Predix Time Series service

</details>
<br/>

<!-- -------------------------------------------------------- -->

### S3 to Time Series Ingestion
<details><summary>Read file(s) from S3 bucket/folder; Bulk insert into Time Series service</summary>

<br/>
No content at this time.

</details>
<br/>

<!-- -------------------------------------------------------- -->

### SFTP to Time Series Ingestion
<details><summary>Read file(s) from SFTP bucket/folder; Bulk insert into Time Series service</summary>

<br/>
No content at this time.

</details>
<br/>

<!-- -------------------------------------------------------- -->


<hr/>
<br/>
<a href="#top">Back to Top</a>

