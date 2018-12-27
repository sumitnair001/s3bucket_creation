# s3bucket_creation
Reusable code for S3 bucket creation with life-cycle policy
This is a simple Terraform script which will help you create an S3 bucket with a lifecycle policy of your choice.
Once you run the main.tf file, it will run the script and take the values mentioned in the 'varfile.tfvars'.
I have included the default values in the file 'varfile.tfvars' which has all the variable values.
Feel free to edit the file as per your requirement of the bucket.
In the lifecycle policy mentioned in the script, we can set the number of days for Standard to Infrequent Access (std_to_IA); Infrequent Access to Glacier(IA_to_glacier) and expiration days(expdays).
Versioning for the bucket is enabled by default in this script.
Feel free to give your suggestions on this in the comment section.
