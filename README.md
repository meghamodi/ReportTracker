## ReportTracker
The project uses bash script to list the s3 buckets, ec2 instances, iam users, lambda functions

Prereq:-
1. Make sure you have the `aws cli` installed. If not, follow the setup here:- https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

Follow the instructions:-
1. Run `aws configure` in the terminal. 
### AWS Access Key ID,AWS Secret Access Key  could be found under IAM > Users > Select User > Security Credential > Access keys > Create access key(Always download the csv as it is one time)
# Default region could be found under IAM and search for Last used region
AWS Access Key ID [None]: 
AWS Secret Access Key [None]: 
Default region name [None]: 
Default output format [None]: json
2. Try running `aws --version` to confirm the installation
3. Run the bash script `aws_resource_tracker.sh`(In the script the output get redirected to a file named `resourceTracker`). To remove the redirection, remove from "> resourceTracker"


