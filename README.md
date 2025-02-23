For this project, I worked on developing and deploying a web scraper to collect data from a utility website and automate its execution using AWS services. The project involved building a web scraper, containerizing it with Docker, and deploying it to AWS Lambda so it could run automatically on a schedule. The goal was to gain experience with cloud automation and serverless computing while ensuring the scraper continuously collects and stores data in Amazon S3.

The first step was setting up my AWS environment, which involved creating an IAM role to securely access AWS resources and storing credentials for authentication. Then, I set up an S3 bucket, which serves as the final storage location for the scraper’s output in CSV format. To manage and deploy the containerized scraper, I created an Amazon ECR (Elastic Container Registry) repository, where the Docker image of my scraper would be stored.

With the cloud infrastructure in place, I proceeded to implement the scraper in the provided codebase. The scraper was designed to extract outage data from the Jackson EMC Outage Map and process it into a structured format. Once the implementation was complete, I built a Docker image of the scraper and pushed it to the ECR repository.

After the image was stored in ECR, I created an AWS Lambda function that pulls the Docker image and executes the scraper on demand. To automate this process, I configured Amazon EventBridge to trigger the Lambda function every 15 minutes, ensuring that the scraper runs on a scheduled basis without manual intervention.

Finally, I tested the function and verified that the CSV files were correctly stored in S3 after each execution. The final deliverable for the assignment was a screenshot of the CSV file inside the S3 bucket, confirming that the scraper successfully collected and stored data as expected.

Through this project, I gained hands-on experience in deploying a containerized web scraper on AWS, automating workflows with EventBridge, and debugging deployment issues related to Lambda, Docker, and ECR. This workflow can be extended for other automated data collection tasks, making it a scalable solution for cloud-based web scraping.
