# Postgres Examples

## SFTP to Postgres
<details><summary>Read file(s) from SFTP server; Bulk insert into Postgres staging table</summary>

<br/>

![Architecture Flow](../Amazon_S3/ReadSFTPtoPostgres.png "Architecture Flow")

#### Key Attributes
* `ListSFTP`: pulls list of files from SFTP server and creates flow file for each file
* `FetchSFTP`: pulls content from files on SFTP servers and populates the flow file
* `PutDatabaseRecord`: inputs records from flow files into Postgres table

#### Developer Notes
* _Carefully check that database configuration details are updated across the entire flow when configuring a new database connection._ The `AvroSchemaRegistry` and `PostgresCon` Controller Services hold majority of the Postgres connection details, but many other processors and services require additional information (i.e. database table name). 
* This template utilizes Enterprise Connect (EC).

</details>
<br/>

<!-- -------------------------------------------------------- -->


## Postgres Connector (Insert)
<details><summary>Query a Postgres database using ThreadConnect connector</summary>

#### Key Attributes
- `InvokeHttp`: invokes the weather API endpoint
- `EvaluateJsonPath` / `EvaluateXPath`: extracts specified values from the JSON/XML response respectively based on the path
- `AttributestoJSON`: creates flat JSON from the list of flowfile attributes
- `ConvertJSONtoSQL`: converts flat JSON into corresponding SQL statement using the details of “test” table
- `PutSQL`: executes the SQL command on the specified (postgres) database. `PutSQL` inputs the record passed as data from the GET call into “test” table

#### Controller Services Used
* `StandardSSLContextService`: helps to communicate with secure API endpoint(HTTPS)
* `DBCPConnectionPool`: connects to the specified postgres database

#### Developer Notes
* The template requires Postgres DB with following requirements: 
	* DB Name: postgres
	* User: postgres
	* Password: postgres
	* Table Name: test Schema
 
	 ```
	{
		“column name” : “type”
		id : character varying,
		cityname : character varying,
		citytemp : character varying,
	}
    ```
* Database Driver Location: Postgresq JDBC Driver jar location (download from https://jdbc.postgresql.org/download.html)
* Carefully check that database configuration details are updated across the **entire** flow when configuring a new database connection.

</details>
<br/>

<!-- -------------------------------------------------------- -->

<hr/>
<br/>
<a href="#top">Back to Top</a>