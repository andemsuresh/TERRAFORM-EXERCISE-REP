
it is giving error when we run terraform init 
Initializing the backend...
╷
│ Error: error configuring S3 Backend: no valid credential sources for S3 Backend found.
│ 
│ Please see https://www.terraform.io/docs/language/settings/backends/s3.html
│ for more information about providing credentials.
│ 
│ Error: NoCredentialProviders: no valid providers in chain. Deprecated.
│ 	For verbose messaging see aws.Config.CredentialsChainVerboseErrors
│ 
│ 

i resolved this issue using
AWS_PROFILE="SURESH AWS" terraform init