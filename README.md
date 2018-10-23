![Thread Connect Logo](/old_templates/img/tc-logo.svg)

# Welcome to Thread Connect

This guide contains information on how to get started using Thread Connect (TC) for complex data integrations. 

Topics range from beginner to advanced. Navigate through the pages with the sidebar on this page. Example data flows are contained in the Code section of this repository, under the Examples folder.

### [Visit the Wiki](https://github.com/thread-connect/tc-wiki)

_For more information on our product and development team, visit https://docs.predix.io/en-US/content/service/app_services/thread_connect_integration_platform/_


## Release Notes

<details><summary>Q3 2018 Release Version rel-1.2.10</summary>

TC-Mapper Version 1.0.0

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


SAP Connector Version 1.0.0

SAP connectors are used to communicate with SAP systems using IDOCs and BAPIs.

BAPI processor supports:		
* Connection to SAP system using SAP Connector library
* Discovery of BAPIs using wildcard character search.
* Import of Metadata, request and response profile, for selected BAPI.
* Ability to download the BAPI metadata.
* Execution of BAPIs in SAP system.
* Reprocessing of flow files when there is a connection timeout.
* Output format of BAPI response as XML or JSON.

IDOC processor supports:
* Receive IDOCs from SAP system configured in the SAP processor.
* Add IDOC control headers to the ThreadConnect Attributes
* Output IDOC received from SAP in XML or JSON format.
* IDOC Packaging- receive packaged IDOCs from SAP system and process them as separate flow-files in Thread Connect.
* Post IDOCs to SAP system configured in the processor
* Ability to update control headers using dynamic processor property, and ThreadConnect Attributes in case of Post IDOC.
* Reprocessing of flow files when there is a connection timeout for Post IDOC.
* Error Handling for general exceptions related to ThreadConnect Attributes.
* IDOC Packaging receive packaged IDOCs from the upstream process flow in Thread connect and process the IDOCs in packages to SAP system.

Salesforce Connector Version 1.0.0

Salesforce GET Operation Connector is used to perform Query action against a specific Salesforce record type or object (Account, Opportunity, Contact, etc). The Connector returns zero-to-many object record documents from a single Query request based on zero or more filters applied to the SOQL Query.

Connector Release Features 
* Connection to any native Salesforce application, including Sales Cloud and Service Cloud or Force.com
* Direct insert of SOQL query with one or more filters.
* Identify and fetch soft-deleted records from Salesforce.
* Support for batching object records fetched from Salesforce. Batching size is limited from 200 to 2000 object records.
* Limit on maximum number of object records to return from Salesforce. 
* Bulk API enablement to efficiently query large data sets and reduce the number of API requests. A bulk query can retrieve up to 15GB of data. This enablement mode can be use when more than 10,000 records are to be fetched.
* PK (primary key) Chunking support which can split bulk queries into chunks. Each chunk is processed as a separate batch with chunkSize configurable from a connector or automatically done by connector. 


Oracle Connector Version 1.0.0

Oracle Adapters are used to perform operations on different integration interface types by connecting to Oracle DB, Oracle AQ Streams and Oracle E-Business Suite through JDBC. Integration interface types include executing action call stored procedures and functions, enqueuing and dequeuing messages from the AQ stream.
AQ Features
* Connection to Oracle AQ Streams with the help of JDBC.
* Enqueue and Dequeue of AQ messages with ADT payload to or from the AQ queue.
* Retrieval of metadata information of AQ queue .
* Support for registering new subscribers to the event. 
* AQ messages can now be sent to intended recipients during enqueue operation.
* Polling mechanism which polls the AQ queue for messages.
* Dequeue conditions which can help consumers to dequeue messages faster.
* Message priorities and identifiers can be set which can help dequeuing agent to dequeue messages faster.
* Threshold limit can be set for while dequeuing payloads beyond which messages are not dequeued. 

E-Business Suite features
* Connection to Oracle DB and Oracle E-Business Suite with the help of JDBC.
* Execution of action call Oracle PLSQL Stored Procedures and Functions as defined in Oracle Integration Repository PLSQL interfaces.
* Capability to handle request in XML/JSON format for executing action call stored procedures and functions.
* Reprocessing of failed execution with configurable retry count.
* Provides functionality to search and select procedures and also help retrieving metadata information of procedures. The term procedure used here is to mean both stored procedures and functions.
* Supports wide range of Oracle data types.

Oracle8i Connector Version 1.0.0

Oracle8i Connection Service is a modification to Apache DBCP Connection Pool for connection to Oracle 8i databases.
Oracle8i Release Features		
* Connection to Oracle8i databases with fix connection pool size 
* Isolates Oracle8i driver and doesn't register it at system classloader level 
* Upgrade from TC 1.1 to support on TC 1.5

EC-TC Integration (Connecting to the data sources from another network (on-premise) )
 
* EC Agent executable is readily available for Thread Connect.
* EC Controller Service is accessible from main menu Main Menu > Controller Settings > Enterprise Connect.
* EC Agent can be easily configured in Client and server modes, will be enabled or disabled.
* Multiple EC Clients and Multiple EC Servers can be configured.
* All configured EC Agents can be seen on the EC controller service.
* Examples connectors that can be used with EC are – Postgres, Oracle, RabbitMQ, Sftp, SSH etc – Anything that requires a native TCP connection
 
Prerequisite: Enterprise Connect Predix Service - EC Gateway are setup and ready to use.


</details>
