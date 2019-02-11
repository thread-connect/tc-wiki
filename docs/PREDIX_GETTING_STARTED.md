[Back to Home Page](../README.md#welcome-to-thread-connect)


# Getting Started on Predix

## Prerequisites
1. Predix Account (Org and Space) created 
2. Cloud Foundry CLI installed


## Subscribing to the Service
Once the prerequisites are met, you should be able to subscribe to the Thread Connect service via the Cloud Foundry CLI. The following steps should be followed to subscribe to the service:
1. View the TC service in the Marketplace: `cf marketplace`
2. Review the plans for TC, chose the one you want, and create a service instance: `cf create-service threadconnect <plan-you-want> <name-it>`
3. Wait for the service to create. View the status of creation and details for the service: `cf service <what-you-named-it>`
4. Once the instance is created, create a service key for the service: `cf create-service-key <your-service> <your-service-key>`
5. View the service key to get the service instance VCAP details: `cf service-key <your-service> <your-service-key>`

From step 5, you should see output similar to the following:
```json
{
 "Admin_Password": "Fui5CuOpmIHcS9okI2T8ibc4g",
 "Admin_Username": "tcadmin",
 "TC-API": "https://d03922cd-a7ce-4450-8330-aa1ccf2ee495-thread-connect.run.pcs.aws-usw02-dev.ice.predix.io/api/{1..10}",
 "TC-CA-TOKEN": "WjHkq5MlV6VKZ7eRW9QnP9Qyt",
 "TC-REGISTRY-URL": "https://activate-thread-connect.run.pcs.aws-usw02-dev.ice.predix.io/v1beta/registry/d03922cd-a7ce-4450-8330-aa1ccf2ee495",
 "TC-UI": "https://d03922cd-a7ce-4450-8330-aa1ccf2ee495-thread-connect.run.pcs.aws-usw02-dev.ice.predix.io/nifi/"
}
```

With the above information you have full access to the service instance, including accessing the application UI. To access the Canvas UI of Thread Connect, copy the URL provided for the value of `TC-UI` in the output of Step 5 and paste into a web browser. 

> NOTE: it may take a few minutes for the application UI to become available. If it does not become available immediately, give it a few more minutes then try again. 

> NOTE: the values for the provided Admin user cannot be changed at any time during subscription to the service. Do not share this information with anyone other than the Subscriber to the service. This user has full root privileges to the Thread Connect application and is the only account that has the ability to set up additional users and permissions. This cannot be reset!

Once the application has successfully been created, following the `TC-UI` URL from a web browser should bring you to a log in screen. Use the values for `Admin_Username` and `Admin_Password` from Step 5 above to authenticate to the application. Upon successful login, you will be at the Canvas UI. See the [Thread Connect User Guide](USER_GUIDE.md) for detailed information on how to start using Thread Connect. 

