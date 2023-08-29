
# Code Samples

---

- [Code Samples - Raw Files](../code)  

---

- [.NET](#net)  
- [Angular](#angular)  
- [AWS](#aws)  
- [Docker](#docker)  
- [GitHub](#github)  
- [Helm](#helm)   
- [Kubernetes](#kubernetes)   
- [Linux](#linux)    
- [PowerShell](#powershell)  
- [Python3](#python3)    
- [Terraform](#terraform) 
- [Typescript](#typescript) 
- [Windows](#windows)    

---

# .NET  

<!-- - [.NET Code Samples](#net-code-samples)   -->
- [.NET Commands](#net-commands)  
- [.NET Resources](#net-resources)  

---

<!-- ## .NET Code Samples
- Coming soon!

--- -->

## .NET Commands

### .NET Version
```
dotnet --version
```

### Create new console app with C#10
```
dotnet new console
```

### Create new console app with C#9
```
dotnet new console --framework net5.0
```

### Run Application
```
dotnet run
```

### Run Test
```
dotnet test
```

## .NET Resources
- [.NET Documentation](https://learn.microsoft.com/en-us/dotnet/)  

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Angular

<!-- - [Angular Code Samples](#angular-code-samples)   -->
- [Angular Commands](#angular-commands)  
- [Angular Resources](#angular-resources)  

<!-- ---

## Angular Code Samples
- [Angular Code Sample](angular-typescript.ts)
 -->
---

## Angular Commands

### Create new project named xyz
```
ng new xyz
```

### Create new component named xyz
```
ng generate component xyz
```

### Build project
```
ng build --prod
```

### Run local development server
```
ng serve --open
```

### Install Angular CLI with NPM
```
npm install -g @angular/cli
```

### Add Material
```
ng add @angular/material
```

---

## Angular Resources
- [Angular Documentation](https://angular.io/docs)   

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# AWS  

<!-- - [AWS Code Samples](#aws-code-samples)   -->
- [AWS Commands](#aws-cli-commands)  
- [AWS Resources](#aws-resources)  

---

<!-- ## AWS Code Samples
- Coming soon!

--- -->

## AWS CLI Commands

### List S3 Buckets
```
aws s3 ls
```

---

## AWS Resources
- [AWS Documentation](https://docs.aws.amazon.com/)  
- [AWS Cloud Practitioner Certification](https://aws.amazon.com/certification/certified-cloud-practitioner/)  

---

# CircleCI Pipeline

## Common Pipeline Steps

### Build Job:
This job compiles your code, packages it, and prepares it for further stages. It can involve tasks like compiling source code, building binaries, or creating distributable artifacts.

### Unit Tests:
Running unit tests is crucial to ensure that individual components of your codebase work as expected. Unit tests help catch bugs and ensure the correctness of your code.

### Integration Tests:
Integration tests check how different components or services in your application interact with each other. These tests ensure that the integration points between various parts of your application are functioning correctly.

### Code Linting and Static Analysis:
Code linting and static analysis tools are used to identify code style issues, potential bugs, and security vulnerabilities. Running these checks in the pipeline helps maintain consistent code quality.

### Security Scanning:
Security scanning tools identify vulnerabilities in your codebase, such as known security vulnerabilities in dependencies or code patterns that could lead to security issues.

### Containerization:
If your application is deployed using containers (e.g., Docker), a job might involve building and pushing container images to a registry.

### Deploy to Staging:
Deploying your code to a staging environment allows you to test changes in an environment that closely resembles production before deploying to the live environment.

### End-to-End Tests:
These tests simulate user interactions with your application to validate its functionality from end to end. They can include UI tests, API tests, and other user-facing scenarios.

### Performance and Load Testing:
Performance and load testing ensure that your application can handle the expected user load without performance degradation or crashes.

### Deployment to Production:
Once changes have been thoroughly tested, they can be deployed to the production environment. This might involve deploying to multiple servers, regions, or cloud services.

### Monitoring and Observability Setup:
As part of the pipeline, you might configure monitoring and observability tools to track the performance and health of your application in production.

### Rollbacks and Recovery:
In case of a failed deployment or issues in production, your pipeline might include jobs to automatically roll back to a previous version or trigger recovery processes.

### Documentation Generation:
Generating updated documentation, such as API documentation or user guides, can be part of your pipeline to ensure that documentation is always up to date.

### Notification and Reporting:
Sending notifications or reports about the pipeline's status, test results, and deployment outcomes to relevant stakeholders is crucial for transparency and quick response.

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Docker

- [Docker Code Samples](#docker-code-samples)  
- [Docker Commands](#docker-commands)  
- [Docker Resources](#docker-resources)  

---

## Docker Code Samples
- [Docker Basics](docker-basics.ps1)

----

## Docker Commands

:whale: 

### Docker Pull
```
docker pull
```

---

### List Docker Images
```
docker images
```

---

## Docker Resources
- [Docker Documentation](https://docs.docker.com/)  

----

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# GitHub

## GitHub Resources
- [GitHub Documentation](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)  
- [GitHub Emoji Cheat Sheet](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md)  
----

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Helm

- [Helm Code Samples](#helm-code-samples)  
- [Helm Commands](#helm-commands)  
- [Helm Resources](#helm-resources)  

---

## Helm Code Samples
- [Pod Ping](pod-ping.yaml)

---

## Helm Commands

### Helm List
```
helm list
```

## Helm Install
```
helm install my-app1 ./mychart1
```
---

## Helm Resources
- [Helms Documentation]()  

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Jenkins

## Sample Pipeline

```
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from version control
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Build your application (e.g., compile, package)
                sh 'mvn clean package'
            }
        }

        stage('Unit Tests') {
            steps {
                // Run unit tests
                sh 'mvn test'
            }
        }

        stage('Integration Tests') {
            steps {
                // Run integration tests
                sh 'mvn integration-test'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy your application (e.g., to a server or container)
                sh './deploy-script.sh'
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded! Deployed to production.'
        }
        failure {
            echo 'Pipeline failed. Check logs for details.'
        }
    }
}
```

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Kubernetes 

<!-- - [Kubernetes Code Samples](#kubernetes-code-samples)   -->
- [Kubernetes Commands](#kubernetes-commands)  
- [Kubernetes Resources](#kubernetes-resources)  

---

<!-- ## Kubernetes Code Samples
- Coming soon!

--- -->

## Kubernetes Commands

### Kubectl
```
kubectl
```

### Get Cluster Roles
```
kubectl get clusterroles
```

### Describe Cluster Roles
```
kubectl describe clusterrole <name>
```

### Get Pods
```
kubectl get pods --namespace <name>
```

### Describe Pods
```
kubectl describe pod <pod name>
```
 
### Create Service Account
```
kubectl create serviceaccount deployer-srvacct-default-binding
```

### Create Cluster Role
```
kubectl create clusterrole deploy --verb=get,list,watch,create,delete,patch,update --resource=deployments.apps
```

### Create Cluster Role Binding
```
kubectl create clusterrolebinding deployer-srvacct-default-binding --clusterrole=deployer --serviceaccount=default:default
```

---

## Kubernetes Resources
- [Kubernetes Documentation](https://kubernetes.io/docs/home/)  

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Linux 

<!-- - [Linux Code Samples](#linux-code-samples)   -->
- [Bash Commands](#bash-commands)  
- [Linux Resources](#linux-resources)  

---

<!-- ## Linux Code Samples
- Coming soon!

--- -->

## Bash Commands

### Get Directory Listing
```
ls
```

---

## Linux Resources
- [Linux (Ubuntu) Documentation](https://docs.ubuntu.com/)  

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# PowerShell 

- [PowerShell Code Samples](#powershell-code-samples)  
- [PowerShell Commands](#powershell-commands)  
- [PowerShell Resources](#powershell-resources)  

---

## PowerShell Code Samples
- [PowerShell Basics](powershell-basics.ps1)

---

## PowerShell Commands
 
### Write-Host
```
Write-Host 'Text'
Write-Host "$Test" # Use ""'s for Variable Expansion
```

### Write-Output
```
Write-Output 'Text'
```

### Clear Screen
```
CLS
```

### Comment
```
# This is a comment
```

### Multi-line Comment
```
<#
  Comments here!
#>
``` 

### Get-Process
```
Get-Process notepad
```

---

## PowerShell Resources
- [PowerShell Documentation](https://learn.microsoft.com/en-us/powershell/)  

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Python3

- [Python3 Code Samples](#python3-code-samples)  
- [Python3 Commands](#python3-commands)  
- [Python3 Resources](#python3-resources)  

---

## Python3 Code Samples
- [Python Basics](python3-basics.py)
```
# Start of Script!
print('')

def calculator(a,b):
  return a + b

result = calculator('Hello, World! ','Goodbye, World!')
print(result)

math = calculator(1,2)
print(math)

"""
Hello World
print('Hello, World!')
"""

print('')

# End of Script!

```

- [Find Common Prefix](python3-find_common_prefix.py)
```

from typing import List

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:

        # Set Loop values 
        common_prefix = ''
        max_number_of_words = len(strs)
        prefix_count = 0
        count = 0
        db = {}

        if len(strs) == 1:
            for str in strs:
                common_prefix = str
                #print(common_prefix)

        # Loop thru each word in the List
        else:
            for str in strs:
          
                # Loop thru each word's length, Flower = 6
                for num in range(0,len(str)):
                    this_prefix = (str[:num + 1])

                    for nextstr in strs:
                        if this_prefix == nextstr[:num+1]:
                            prefix_count = prefix_count + 1
               
                    if prefix_count > 1:
                        db[this_prefix]=prefix_count
                       
                    # Reset Prefix Count
                    prefix_count = 0

            # Filter dictionary
            filtered_db = {prefix: count for prefix, count in db.items() if count > 1}        
            longest_key = max(filtered_db.values(), default=0)
            copy_db = {prefix: count for prefix, count in filtered_db.items() if count == max_number_of_words}
            longest_string = max(copy_db, default="")

            #print(longest_key, longest_string)
            #print(copy_db)

            common_prefix = longest_string

        print('Number of words:', max_number_of_words)
        print('Common prefix is:',common_prefix)

        # Return commonprefix
        #print(common_prefix)
        return common_prefix

# Create instance of tte class
instance = Solution()

# Create List
input_list = ["aa","aa","aa"]

# Call Function with list
result = instance.longestCommonPrefix(input_list)
print(result)

```

- [Length of Last Word](python3-length_of_last_word.py)

---

## Python3 Commands

### Run a script
```
py ./Script.py
```

## Comments
```
# A single line comment  
```

```
"""This is a 
    multiline
    comment."""
```

```
'''This is also a
     multiline
     comment.'''
```

---

### Print()
```
print('hi')
```

---

### Variables
```
var = 1 # Number
var = 1.5 # Floating Number
var = 'String' # String
```

### Functions
```
def function_name(var1,var2):
   indent

function_name(var1,var2)   
```
---

## Python3 Resources
- [Python Documentation](https://docs.python.org/3/) 

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

# Terraform 

- [Terraform Code Samples](#terraform-code-samples)  
- [Terraform Commands](#terraform-commands)  
- [Terraform Resources](#terraform-resources)  

---

## Terraform Code Samples
- [Terraform Basics](./terraform/main.tf)

---

## Terraform Commands

### Terraform Init
- Initializes a new or existing Terraform configuration. It downloads the necessary provider plugins and sets up the working directory for Terraform.

```
terraform init
```

---

### Terraform Plan
- Generates an execution plan that describes what changes Terraform will make to your infrastructure. It helps you see what resources will be created, modified, or deleted.

```
terraform plan  
```

---

### Terraform Apply
- Applies the changes described in the execution plan generated by terraform plan. It creates, updates, or deletes resources to match the desired state defined in your configuration.

```
terraform apply  
```

---

### Terraform Destroy
- Destroys all the resources created by your configuration. It's a way to tear down your infrastructure when it's no longer needed.

```
terraform destroy
```

<!-- terraform validate: Checks your configuration files for syntax errors and basic validity. It's a quick way to catch mistakes before applying changes.

terraform refresh: Reads the current state of your infrastructure and updates the Terraform state file to reflect the real-world resources.

terraform output: Displays the outputs defined in your Terraform configuration. Outputs are values that can be useful for understanding or sharing information about your infrastructure.

terraform state: Allows you to inspect and manage the Terraform state file directly. This can be useful for advanced operations or troubleshooting.

terraform import: Imports existing infrastructure resources into your Terraform state. This is useful when you're adopting Terraform for an existing environment.

terraform workspace: Manages workspaces, which allow you to maintain multiple configurations and state files within the same configuration directory.

terraform fmt: Automatically formats your configuration files according to the Terraform style conventions. This helps maintain consistent code style.

terraform taint: Manually marks a resource as tainted, forcing it to be destroyed and recreated on the next terraform apply.
 -->
 
---

## Terraform Resources
- [Terraform Associate Exam](https://developer.hashicorp.com/terraform/tutorials/certification-003/associate-review-003)  
- [Terraform Developer Docs](https://developer.hashicorp.com/terraform/language)  

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---

## Typescript

### Typescript Samples
[Typescript Add Two Numbers](typescript-add-two-numbers.ts)

##### Typescript Add Two Numbers
```

// Define a simple function that adds two numbers
function add(a: number, b: number): number {
    return a + b;
  }
  
  // Declare variables with explicit types
  let num1: number = 5;
  let num2: number = 10;
  
  // Call the function and store the result
  let result: number = add(num1, num2);
  
  // Print the result to the console
  console.log(`The sum of ${num1} and ${num2} is ${result}`);
  
```
---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---


# Windows 

<!-- - [Windows Code Samples](#windows-code-samples)   -->
- [Windows Commands](#windows-cmd-commands)  
- [Windodws Resources](#windows-resources)  

---

<!-- ## Windows Code Samples
- Coming soon!

--- -->

## Windows CMD Commands

### IPCONFIG
```
ipconfig
ipconig /all
```

---

## Windows Resources
- [Windows Documentation](https://learn.microsoft.com/en-us/windows/)  

---

## [:arrow_up: Back to top of page :arrow_up: ](#code-samples)

---
