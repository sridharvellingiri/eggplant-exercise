# eggplant
Eggplant Interview

##Prerequests

>git clone https://github.com/sridharvellingiri/eggplant.git 
>Install aws-cli
>Running k8s environment
>Travis environment

##Task 1
Used Python for web application to run with port 8080

###To build docker image and run locally
`docker build -t eggplant .`

`docker run -p 8080:8080 eggplant`

Load `http://127.0.0.1:8080` in the web browser

##Task 2
###Deploy Postgres RDS Cloudformation
Used Cloudformation template to create RDS stack with Master and Read Replica

Replace your own VPC ID, Private Subnet ID's and Public Subnet ID's in rds.yml template before deploy. 
*Option: Change MultiAZDatabase  default option to true if you want enable High availability of RDS

`aws cloudformation create-stack --stack-name eggplant-rds --template-body file://cfn-templates/rds.yaml`

##Task 3
Created helm chart to deploy the above created container in k8s cluster

`kubectl create namespace exercise`
`helm install eggplant ./Helm --namespace exercise`

##Task 4
Created Travis CI stages to run above tasks in each stage using ".travis.yaml" file.