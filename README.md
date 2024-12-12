# AWS Serverless API with Terraform

This project demonstrates how to build and deploy a serverless API using AWS resources such as API Gateway, Lambda, S3, and DynamoDB. Terraform is used to provision and manage the infrastructure.

## Project Overview

### Features:

- **API Gateway**: Handles HTTP requests and routes them to Lambda functions.
- **Lambda Functions**: Backend logic written in Node.js (or any preferred runtime).
- **Terraform**: Infrastructure as Code (IaC) for repeatable and consistent deployments.
- **State Management**: Terraform state is stored securely on S3 with DynamoDB for state locking and consistency.

### Architecture:

- API Gateway routes requests to Lambda functions.
- S3 bucket stores Terraform state files.
- DynamoDB table ensures Terraform state locking.

## Prerequisites

1. **Terraform**: [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
2. **AWS CLI**: [Install AWS CLI](https://aws.amazon.com/cli/).
3. **AWS Account**: Access credentials with permissions to create resources (S3, Lambda, API Gateway, DynamoDB).

## Setup and Deployment

### 1. Clone the Repository

```bash
git clone https://github.com/omarxsaeed/aws-serverless-app.git
cd aws-serverless-app
```

### 2. Initialize Terraform

Run the following command to initialize Terraform and download required modules:

```bash
terraform init
```

### 3. Apply the Configuration

Run the following command to deploy the infrastructure:

```bash
terraform apply
```

Type `yes` when prompted to confirm.

## Project Structure

```plaintext
aws-serverless-project/
├── infrastructure/
│   ├── backend.tf
│   ├── gateway.tf
│   ├── lambdas.tf
│   ├── main.tf
│   ├── variables.tf
├── lambdas/
│   └── src/
│   |   └── hello-world/
│   |       └── index.ts
│   ├── package.json
│   ├── package-lock.json
│   └── zip.ts
└── README.md
```

## Terraform Resources

### S3 Bucket for State Management

- Stores Terraform state files securely.
- Enabled versioning for state backups.

### DynamoDB Table for State Locking

- Ensures state consistency during concurrent Terraform operations.

### API Gateway

- Configured with HTTP protocol.
- Routes requests to Lambda functions.

### Lambda Functions

- Backend logic for handling API requests.
- Written in Node.js Using TypeScript and deployed using Terraform.

## Cleanup

To delete all resources created by Terraform, run:

```bash
terraform destroy
```

Type `yes` to confirm the deletion.

## Future Enhancements

- Add more Lambda functions for different API routes.
- Integrate with a database (e.g., DynamoDB, RDS).
- Set up CI/CD pipelines for automated deployments.
