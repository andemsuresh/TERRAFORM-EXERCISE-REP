when i run AWS_PROFILE="SURESH AWS" terraform apply -auto-approve i got the below error

then i google and found the solution that to change the dynamoDB_table name

i have created table name as :- terraform_dynamoDB
Partition key :- LockID

after resolved the issue..

Error: Error acquiring the state lock
│ 
│ Error message: 2 errors occurred:
│ 	* ResourceNotFoundException: Requested resource not found
│ 	* ResourceNotFoundException: Requested resource not found
│ 
│ 
│ 
│ Terraform acquires a state lock to protect the state from being written
│ by multiple users at the same time. Please resolve the issue above and try
│ again. For most commands, you can disable locking with the "-lock=false"
│ flag, but this is not recommended.