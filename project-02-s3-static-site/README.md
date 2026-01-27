# Project 2: Host a Static Website on Amazon S3 using Terraform



##  Goal

Publish a simple static website using Amazon S3 with Infrastructure as Code (IaC) via Terraform.



---



##  Tasks

- Create an S3 bucket with website hosting enabled.

- Upload `index.html` to the bucket.

- Make the site publicly accessible.

- Verify the website is running.



---





##  Project Structure

```text

├── main.tf              # Terraform configuration for S3 bucket and website hosting

├── variables.tf         # Input variables (region, bucket name, etc.)

├── index.html           # Static webpage content

├── README.md            # Project documentation

└── screenshots/        # Evidence of deployment

    └── website-running.png



```

---



## Usage

```bash

terraform init

terraform validate

terraform plan

terraform apply -auto-approve

terraform output

```



##  Deliverables

- **GitHub Repository** containing:

  - Terraform configuration files (`main.tf`, `variables.tf`)

  - Static webpage (`index.html`)

  - Documentation (`README.md`)

  - Screenshots folder



- **Screenshot Evidence**:

  - [website-running.png](screenshots/website-running.png) → Shows the static site successfully hosted and accessible via the S3 website endpoint





##  Conclusion

This project demonstrates how Infrastructure as Code (IaC) can be used to provision and manage cloud resources efficiently. By leveraging Terraform, we automated the deployment of a Linux EC2 instance, configured it with a web server, and hosted a sample webpage accessible over the internet.  



The approach ensures reproducibility, scalability, and easy cleanup of resources, making it a practical foundation for more complex cloud infrastructure projects. The included screenshots validate the successful deployment and functionality of the web server.








