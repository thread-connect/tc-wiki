# Email & Logging Examples

## GE Email Service
<details><summary>Show an example of how to use Email Service </summary>

#### Key Attributes
- `GenerateFlowFile`: Creates email payload to be sent
- `InvokeHTTP`: Triggers TC Wrapper Email API by passing payload
- `LogAttribute`: Logs and termiates the repsonsne fetched from Wrapper service

#### Developer Notes 
- Use this template for invokeingn email service when you want to send emails to Outlook server
- Client invokes TC instance wrapper service which in turn invokes Akana service for sending email


</details>
<br/>

<!-- -------------------------------------------------------- -->

<hr/>
<br/>
<a href="#top">Back to Top</a>