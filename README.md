# cloud-concierge-example
Example output produced from running the [cloud-concierge](https://github.com/dragondrop-cloud/cloud-concierge) container.

## Background Information on Example
### Terraform Set-Up
We have Terraform files in this repo corresponding to two different state files, one for persistent storage resources, and the other for networking resources.

In this example, we manage the state with Terraform Cloud. cloud-concierge also supports s3, gcs, and azurerm state backends. 

### Cloud Actions Taken
1) Introduced drift within our Application Load Balancer currently managed by Terraform.
2) Created a new database instance using the AWS console - outside of our Terraform workflow.

### cloud-concierge
The .env file we used (with credentials scrubbed) can be found [here](demo.env).

## Resulting Pull Request
Check it out [here](https://github.com/dragondrop-cloud/cloud-concierge-example/pull/2)!

### More information on cloud-concierge
- [Documentation](https://docs.cloudconcierge.io)
- [Slack](https://cloud-concierge.slack.com/join/shared_invite/zt-1xx3sqsb6-cekIXs2whccZvbU81Xn5qg#/shared-invite/email)
- [Tool Walk Through + Use Case (low stakes and no pressure!)](https://calendly.com/dragondrop-cloud/cloud-concierge-walk-through)
- [Terraform Learning Resources](https://dragondrop.cloud/learn/terraform/)
- [Medium Blog](https://medium.com/@hello_9187)
- [Managed Offering](https://dragondrop.cloud/how-it-works/)

