# terraform-files

in some cases we in a multiple servers we want recreate a or delete the server than create it again due to some technical issues at that point we will face some down time so we will use taint

1. first we have to taint the resources for that particular resource = terraform taint <resources name>
2. to untaint the resources we use = terraform untaint <resource name>
3. after tainting the resources we have to reapply the resource to see the changes
4. instead of using taint and reapply we can use replace
5. for replace and taint both does the same things
6. to replace = terraform apply --auto-approve -replace=<resource name>
