# AWS EC2 to S3 Access Using IAM Roles

## Project Overview

This project demonstrates how an Amazon EC2 instance can securely access and read a file from a private Amazon S3 bucket using an IAM role, without storing AWS access keys on the instance.

## AWS Services Used

- **Amazon EC2:** Runs the Linux server.
- **Amazon S3:** Stores the private `hello.txt` file.
- **AWS IAM:** Controls permissions using an IAM role.
- **AWS CLI:** Lists and reads objects in the S3 bucket.

## Configuration

| Resource | Configuration |
|---|---|
| AWS Region | Mumbai (`ap-south-1`) |
| EC2 Instance | `web-01-ayush` |
| Operating System | Amazon Linux 2023 |
| Instance Type | `t3.micro` |
| S3 Bucket | `clouderway-demo-ayush` |
| IAM Policy | `AmazonS3ReadOnlyAccess` |
| IAM Role | `role-ayush-mehunkar` |

## Implementation and Testing

An IAM role with S3 read-only permissions was attached to the EC2 instance. The S3 bucket contains a file named `hello.txt`.

### 1. List the S3 bucket contents

Command:

```bash
aws s3 ls s3://clouderway-demo-ayush
```

The command successfully listed `hello.txt`.

### 2. Read the file from S3

Command:

```bash
aws s3 cp s3://clouderway-demo-ayush/hello.txt -
```

Output:

```text
Hello from Ayush!
```

## Results

The EC2 instance successfully listed and read a file from the private S3 bucket using its attached IAM role. No manually configured AWS access keys were needed on the instance.

## Security Practices

- Use IAM roles instead of storing long-term AWS access keys on EC2.
- Keep the S3 bucket private and Block Public Access enabled.
- Grant only the permissions required.
- Restrict SSH access to trusted sources.
- Clean up temporary lab resources when finished.

## Conclusion

This project demonstrates secure, role-based access from Amazon EC2 to Amazon S3 using AWS IAM.

**Author:** Ayush Mehunkar