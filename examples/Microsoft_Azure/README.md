# Microsoft Azure Examples

## Azure BlobStore Connector
<details><summary>Read file(s) from Azure blob store bucket/folder</summary>

#### Key Attributes
* `ListAzureBlobStorage`: Pulls names of blobs from a previously- specified Microsoft Azure Blob Storage
	* All pulled names refer to blobs which have been modified or newly added since the last time the names were pulled
	* Each name is referenced in its own flowfile
* `FetchAzureBlobStorage`: Pulls blobs from Azure storage container
	* The name of the blob is referenced by some attribute in flowfile
	* The attribute which holds the blob name by default is `${azure.blobname}`

#### Developer Notes
* The following items are required for this template to work:
	* Azure Container Name
	* Azure Storage Account Name
	* Azure Storage Account Key (if needed to access storage account)

</details>
<br/>

<!-- -------------------------------------------------------- -->

## Azure to EventHub
<details><summary>Read and post to EventHub</summary>

#### Key Attributes
- `HandleHttpRequest`: Listens for incoming requests
	 * Default port is `3119`
- `PutAzureEventHub`: Places request body into Azure storage container as a body of Blob
- `HandleHttpResponse`: Sends a response back to user

#### Developer Notes
* The following items are required for this template to work:
	* Azure Container Name
	* Azure Storage Account Name
	* Azure Storage Account Key (if needed to access storage account)

</details>
<br/>

<!-- -------------------------------------------------------- -->

<hr/>
<br/>
<a href="#top">Back to Top</a>
