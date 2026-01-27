

# Project 1: Deploy a Linux EC2 Web Server using Terraform



##  Goal

Create a web server on AWS using Infrastructure as Code (IaC) with Terraform.  

The server will run Apache/Nginx and host a simple webpage.



---



##  Tasks

- Provision AWS infrastructure:

  - VPC

  - Subnet

  - Security Group

  - EC2 Instance

- Configure EC2 with a Bash script (`user_data.sh`) to install Apache/Nginx.

- Deploy a sample webpage and verify accessibility.

- Document the process with screenshots.



---



##  Project Structure

```text

├── main.tf                          # Main Terraform configuration

├── variables.tf                     # Input variables

├── output.tf                        # Output values (e.g., public IP)

├── user_data.sh                     # Bash script to install web server & host page

├── README.md                        # Project documentation

└── screenshots/                     # Evidence of deployment

  ├── aws-console-ec2.png


  └── website-running.png



```

---





## Initialize Terraform



```bash

terraform init

terraform validate

terraform plan

terraform apply 

terraform output

```



##  Deliverables

- **GitHub Repository** containing:

  - Terraform configuration files (`main.tf`, `variables.tf`, `output.tf`)

  - Bash script (`user_data.sh`)

  - Documentation (`README.md`)

  - Screenshots folder



- **Screenshots Evidence**:

  - `aws-console-ec2.png` → EC2 instance running in AWS

  - `website-running.png` → Webpage accessible in browser



##  Conclusion

This project demonstrates how Infrastructure as Code (IaC) can be used to provision and manage cloud resources efficiently. By leveraging Terraform, we automated the deployment of a Linux EC2 instance, configured it with a web server, and hosted a sample webpage accessible over the internet.  



The approach ensures reproducibility, scalability, and easy cleanup of resources, making it a practical foundation for more complex cloud infrastructure projects. The included screenshots validate the successful deployment and functionality of the web server.





✔ Project completed successfully





