[Back to Home Page](../README.md#welcome-to-thread-connect)

[Back to Home Page](../README.md#welcome-to-thread-connect)

# Thread Connect Release Notes


<details><summary>Q1 2019 Release Version rel-2.0.2</summary>

### Q1 2019 Release Notes

### Upgrade

TC now upgraded to Nifi 1.8
#### Highlights of the 1.8.0 release include:
* Cumulative release including Nifi 1.6 and 1.7 changes
* Secure cluster communication between nodes now requires two-way SSL
* Connections support load balancing across the cluster
* Nodes can be offloaded to prepare for decommissioning
* Easier to create a cluster on Docker with docker-compose and environment variables
* New or Improved Processors and Controller Services
* LookupService that uses ElasticSearch
* NetFlow Processors
* JoltTransformRecord processor
* Processors for interacting with Apache Kafka 2.0
* SQL results can now be output as records in any supported format
* ListenHTTP Processor supports multipart requests

#### UI
* Configure load balancing and load balancing compression from the Connection properties dialog
* Connections indicate load balancing status
* Cluster Summary dialog allows offloading disconnected nodes
* Documentation
* New documentation for load balancing and node offloading
* NiFi Port list
* For additional details check out - Apache Nifi release notes


#### Security
* Lacking file access permissions - Granular user permission for uploaded files, uploaded files now only visible to uploaded user and admin by default. Explicit access to the file would need to be granted to other users. This fixes the file access issue where all users could access the uploaded file(s).
* Nifi application running as root - With this release you will now be able to install Nifi as a non root user additional security fixes from Rel 1.6 and 1.7 are also included see documentation for details - Apache Nifi release notes


#### Connector


##### New in TC
TC now supports Predix timeSeries data ingestion using custom connector


##### Enhancements
* Nurego metering fixed for TC.
* Ability to do SFTP from Predix to on-prem using IPSEC tunnel in case EC agent cannot be run on the on-prem servers. Contact us for details
* Enhanced EC controller service integration in TC
* Salesforce connector now supports SOQL that allows to create advanced and complex queries


##### IOT


* TC in Edge Ecosystem
* TC- Edge CPP version now available for IOT - Contact us to discuss edge use cases
* TC- Edge Java version now available for IOT - Contact us to discuss edge use cases


#### Misc
* Auto scaling feature now supports scale-up or scale-down of the nodes in cluster as per demand
* Subscription Id has been added to all log messages being output from TC components including tc-admin. This feature allows NiFi to have configurable log levels that can be set at runtime by passing a value to a LOG_LEVEL ENV variable to the Docker container. It supports all the NIFI available logging levels. A new ENV variable called LOG_LEVEL is added to the NiFi container for which a log level can be provided to (ex: DEBUG, ERROR, TRACE, etc). TC-Admin application needs to have a standard logging module created (may already exist) that can be used as a single logging module throughout the application. 

</details>


<details><summary>Q3 2018 Release Version rel-1.2.10</summary>

### Q3 2018 Release Notes

#### TC-Mapper Version 1.0.0

ThreadConnnectMapper processor enables users to create data transformations between source and target schema elements visually. Internally these transformations are used to transform incoming Source data to its corresponding Target format. 

Mapper Release Features 
* Supports XML to XML and JSON to JSON transformations.
* Import Source and Target schema files (either .xml or .json) based on its type (XML/JSON).
* Option to edit the loaded schema files.
* XML/JSON syntax validation of the loaded schema files (Error highlight).
* Display the loaded schema files of Source and Target as Mappable tree. 
* Supports 1:1 visual mapping from Source to Target.
* User can delete all the mappings on clicking Reset and individual mapping on double click.
* Generates XSLT and JOLT SPEC based on the visual mapping.
* Generated transformation transforms incoming XML/JSON data internally.


#### SAP Connector Version 1.0.0

SAP connectors are used to communicate with SAP systems using IDOCs and BAPIs.

##### BAPI processor supports:		
* Connection to SAP system using SAP Connector library
* Discovery of BAPIs using wildcard character search.
* Import of Metadata, request and response profile, for selected BAPI.
* Ability to download the BAPI metadata.
* Execution of BAPIs in SAP system.
* Reprocessing of flow files when there is a connection timeout.
* Output format of BAPI response as XML or JSON.

##### IDOC processor supports:
* Receive IDOCs from SAP system configured in the SAP processor.
* Add IDOC control headers to the ThreadConnect Attributes
* Output IDOC received from SAP in XML or JSON format.
* IDOC Packaging- receive packaged IDOCs from SAP system and process them as separate flow-files in Thread Connect.
* Post IDOCs to SAP system configured in the processor
* Ability to update control headers using dynamic processor property, and ThreadConnect Attributes in case of Post IDOC.
* Reprocessing of flow files when there is a connection timeout for Post IDOC.
* Error Handling for general exceptions related to ThreadConnect Attributes.
* IDOC Packaging receive packaged IDOCs from the upstream process flow in Thread connect and process the IDOCs in packages to SAP system.

#### Salesforce Connector Version 1.0.0

Salesforce GET Operation Connector is used to perform Query action against a specific Salesforce record type or object (Account, Opportunity, Contact, etc). The Connector returns zero-to-many object record documents from a single Query request based on zero or more filters applied to the SOQL Query.

##### Connector Release Features 
* Connection to any native Salesforce application, including Sales Cloud and Service Cloud or Force.com
* Direct insert of SOQL query with one or more filters.
* Identify and fetch soft-deleted records from Salesforce.
* Support for batching object records fetched from Salesforce. Batching size is limited from 200 to 2000 object records.
* Limit on maximum number of object records to return from Salesforce. 
* Bulk API enablement to efficiently query large data sets and reduce the number of API requests. A bulk query can retrieve up to 15GB of data. This enablement mode can be use when more than 10,000 records are to be fetched.
* PK (primary key) Chunking support which can split bulk queries into chunks. Each chunk is processed as a separate batch with chunkSize configurable from a connector or automatically done by connector. 


#### Oracle Connector Version 1.0.0

Oracle Adapters are used to perform operations on different integration interface types by connecting to Oracle DB, Oracle AQ Streams and Oracle E-Business Suite through JDBC. Integration interface types include executing action call stored procedures and functions, enqueuing and dequeuing messages from the AQ stream.

##### AQ Features
* Connection to Oracle AQ Streams with the help of JDBC.
* Enqueue and Dequeue of AQ messages with ADT payload to or from the AQ queue.
* Retrieval of metadata information of AQ queue .
* Support for registering new subscribers to the event. 
* AQ messages can now be sent to intended recipients during enqueue operation.
* Polling mechanism which polls the AQ queue for messages.
* Dequeue conditions which can help consumers to dequeue messages faster.
* Message priorities and identifiers can be set which can help dequeuing agent to dequeue messages faster.
* Threshold limit can be set for while dequeuing payloads beyond which messages are not dequeued. 

##### E-Business Suite features
* Connection to Oracle DB and Oracle E-Business Suite with the help of JDBC.
* Execution of action call Oracle PLSQL Stored Procedures and Functions as defined in Oracle Integration Repository PLSQL interfaces.
* Capability to handle request in XML/JSON format for executing action call stored procedures and functions.
* Reprocessing of failed execution with configurable retry count.
* Provides functionality to search and select procedures and also help retrieving metadata information of procedures. The term procedure used here is to mean both stored procedures and functions.
* Supports wide range of Oracle data types.

##### Oracle8i Connector Version 1.0.0

Oracle8i Connection Service is a modification to Apache DBCP Connection Pool for connection to Oracle 8i databases.
Oracle8i Release Features		
* Connection to Oracle8i databases with fix connection pool size 
* Isolates Oracle8i driver and doesn't register it at system classloader level 
* Upgrade from TC 1.1 to support on TC 1.5

#### EC-TC Integration (Connecting to the data sources from another network (on-premise) )
 
* EC Agent executable is readily available for Thread Connect.
* EC Controller Service is accessible from main menu Main Menu > Controller Settings > Enterprise Connect.
* EC Agent can be easily configured in Client and server modes, will be enabled or disabled.
* Multiple EC Clients and Multiple EC Servers can be configured.
* All configured EC Agents can be seen on the EC controller service.
* Examples connectors that can be used with EC are – Postgres, Oracle, RabbitMQ, Sftp, SSH etc – Anything that requires a native TCP connection
 
Prerequisite: Enterprise Connect Predix Service - EC Gateway are setup and ready to use.


</details>

