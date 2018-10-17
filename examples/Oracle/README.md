# Oracle Examples

## Oracle Database
<details><summary>Query an Oracle Database using a ThreadConnect connector</summary>

#### Key Attributes
- `HandleHttpRequest`: creates POST API endpoint by specifying the port and path to be listening to.
- `HandleHttpResponse`: sends API response along with the specified status code
- `PutSQL`: inputs the record passed as data for the POST call into “EMPLOYEE” table.
- `ConvertJSONToSQL`: converts flat JSON into corresponding SQL statement using the
details of “EMPLOYEE” table.

#### Controller Services Used
- `StandardHttpContextMap`: allows to store & retrieve HTTP requests & responses
- `DBCPConnectionPool`: connects to the specified Oracle database

#### Developer Notes
* The template requires Oracle DB with following requirements: 
	* Table Name: EMPLOYEE
 
	 ```
	{
	“column name” : “type”
	id : character varying,
	cityname : character varying,
	citytemp : character varying,
	}
    ```
* Database Driver Location: Oracle JDBC Driver jar location (download from https://www.oracle.com/technetwork/database/features/jdbc/jdbc-drivers-12c-download-1958347.html )
* Carefully check that database configuration details are updated across the **entire** flow
when configuring a new database connection.
* The Post API requires JSON data in the format Example:
	 ```
	{
	"EMP_ID": 47,
	"EMP_NAME": "Ram", "EMP_ADDRESS":"Church street"
	}
    ```

</details>
<br/>

<!-- -------------------------------------------------------- -->

## Oracle eBiz API
<details><summary>Execute PLSQL procedures connecting to Oracle eBiz Suite</summary>

#### Key Attributes
- `GeerateFlowFile`: Procedure API values which will be used to call procuedure o Oracle eBiz Suite
- `ExecutePLSQL`: Executes PLSQL Procedure aPI on Oracle eBiz Suite
- `PutFile`: Receive output repsosne of executed procedure form Oracle eBiz Suite

#### Configuration of `ExecutePLSQL` Procedure
1. Setup Oracle eBiz Suite coenction from Oracles Controller Service
2. Browse, Search, ad Select Metadata of PLSQL procedure from `AdvancedWizard-` (Review `ExecutePLSQL` documetnation for more informatio.)
3. Ingest procedure values to `ExecutePLSQL` and run it

</details>
<br/>

<!-- -------------------------------------------------------- -->

## Oracle AQ Adaptor with Publish & Subscribe
<details><summary>How to configure ebiz controller service to publish or subscribe a AQ message</summary>

#### Key Attributes for Publishing
- `GenerateFlowfile`: Creates AQ payload to be sent
- `PublishAQ`: Publishes emssages to Oracle AQ queue
- `PutFile`: MessageID is written upon success otherwise error written causing the failure

#### Key Attributes for Subscribing
- `ConsumeAQ`: Listens for messages from AQ queue by periodically polling it
- `PutFile`: Consumed messages will eb routed to success

</details>
<br/>

<!-- -------------------------------------------------------- -->

<hr/>
<br/>
<a href="#top">Back to Top</a>
