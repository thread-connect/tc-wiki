[Back to Home Page](../README.md#welcome-to-thread-connect)

# Thread Connect User Guide

Thread Connect is an extended version of Apache NiFi so to understand how to use Thread Connect, you must know how to use Apache NiFi. Apache NiFi is an extremely robust product and does not come without complexities. Apache NiFi has a very active community of developers and there is a wealth of information on it's use. A list of links to official documentation for NiFi is provided below. Only after understanding that documentation will the full potential of Thread Connect be unlocked. Items that are custom to Thread Connect are documented here as well as information on examples which the Thread Connect team has compiled for common use cases. The examples are a great way to get started with Thread Connect. 

We recommend reading thru the Apache NiFi documentation before starting with Thread Connect and subscribing to the NiFi User Group disribution list if you plan to be seriously using Thread Connect as the majority of questions and issues will be related to technical challenges building data flows. 

### Apache NiFi Resources
- [Apache NiFi Getting Started Guide](https://nifi.apache.org/docs/nifi-docs/html/overview.html)
- [Apache NiFi User Guide](https://nifi.apache.org/docs/nifi-docs/html/user-guide.html)
- [Apache NiFi in Depth](https://nifi.apache.org/docs/nifi-docs/html/nifi-in-depth.html)
- [Apache NiFi Project Site](https://nifi.apache.org/)
- [Apache NiFi Mailing Lists](https://nifi.apache.org/mailing_lists.html)

---

### Thread Connect User Guide Contents
- [Users and Permissions](USER_GUIDE_USER_MANAGEMENT.md#thread-connect-user-guide-contents)
    - [User Management](USER_GUIDE_USER_MANAGEMENT.md#user-management)
    - [User Groups](USER_GUIDE_USER_MANAGEMENT.md#user-groups)
    - [Permissions Management](USER_GUIDE_USER_MANAGEMENT.md#permissions-management)
    - [Policies](USER_GUIDE_USER_MANAGEMENT.md#policies)
- [File Upload Resources](USER_GUIDE_FILE_RESOURCES.md#thread-connect-user-guide-contents)
    - [File Resources](USER_GUIDE_FILE_RESOURCES.md#file-resources)
    - [Referencing File Resources](USER_GUIDE_FILE_RESOURCES.md#referencing-file-resources)
- [Exposing a Web API](USER_GUIDE_EXPOSING_WEB_API.md#thread-connect-user-guide-contents)
- [Setting Up Registry](USER_GUIDE_SETTING_UP_REGISTRY.md#thread-connect-user-guide-contents)
    - [Setting Up Registry](USER_GUIDE_SETTING_UP_REGISTRY.md#setting-up-registry)
    - [Versioning Data Flows](USER_GUIDE_SETTING_UP_REGISTRY.md#versioning-data-flows)
- [Trying Out Examples](USER_GUIDE_TRYING_EXAMPLES.md#trying-out-examples)

---

## Exposing a Web API
Thread Connect offers the ability to expose a Web API endpoint directly from the canvas by using the HandleHTTPRequest processor. There are many use cases where this is desired and it is only a matter of dragging the processor onto the canvas and then configuring it based on the table below. A standard scheme is in place that must be followed for the endpoint to be made available. See the table below for details:

Context Path | HandleHttpRequest Port
-------------|-----------------------
/api/1/ | 8101
/api/2/ | 8102
/api/3/ | 8103
/api/4/ | 8104
/api/5/ | 8105
/api/6/ | 8106
/api/7/ | 8107
/api/8/ | 8108
/api/9/ | 8109
/api/10/ | 8110


To use the above API routing scheme, configure the HandleHttpRequest processor to one of the ports listed above (in the Configure menu -> Properties tab -> Port property). When the processor is started, a web endpoint will be available via the corresponding Context Path and UI URL. 

Example:

HandleHttpRequest processor is configured for GET requests on port 8101. The application instance URL is `https://abc-123-thread-connect.some.cloud.com`. The web api endpoint is able to be accessed by making a GET request to the following: `https://abc-123-thread-connect.some.cloud.com/api/1/`. The web api endpoint would also be accessible with the following: `https://abc-123-thread-connect.some.cloud.com/api/1/some/additional/path/` since the base path is present (`/api/1/`).


[Back to Top](USER_GUIDE_EXPOSING_WEB_API.md#thread-connect-user-guide-contents)
