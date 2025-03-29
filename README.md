# ⚡ Power Outage Web Scraper

This project is a cloud-deployed, containerized web scraper that collects power outage data from the **Jackson EMC Outage Map** and stores it in an **AWS S3 bucket** on a recurring schedule.

It was built to explore **cloud automation**, **serverless architecture**, and **data collection pipelines** using **Docker**, **AWS Lambda**, **ECR**, and **EventBridge**.

---

## 🚀 Project Highlights

- 🕸️ Scrapes real-time outage data from Jackson EMC
- 🐳 Containerized using Docker
- ☁️ Deployed to AWS Lambda via Amazon ECR
- 🔁 Triggered automatically every 15 minutes with EventBridge
- 💾 Stores structured CSV data in Amazon S3

---

## 🛠️ Technologies Used

- Python
- Selenium
- Docker
- AWS Lambda
- Amazon S3
- Amazon ECR
- EventBridge

---

## 🧱 Architecture

```text
[Jackson EMC Website]
        ↓
     [Scraper]
        ↓
     [Docker]
        ↓
     [ECR Repo] ──> [AWS Lambda] ⇨ [S3 Bucket]
                           ▲
                    [EventBridge Scheduler]
```

---

## 📁 Repository Structure

```
main.py               # Web scraping logic
Dockerfile            # Docker container configuration
requirements.txt      # Python dependencies
README.md             # Project documentation
```

---

## ⚙️ How It Works

1. **Web Scraper**:
   - Extracts outage data from the Jackson EMC website using Selenium
   - Outputs data as a structured CSV

2. **Docker & AWS Deployment**:
   - Scraper is containerized using Docker
   - Image is pushed to Amazon ECR

3. **Lambda Execution**:
   - AWS Lambda pulls the Docker image and runs the scraper
   - Data is written to a predefined S3 bucket

4. **Automation**:
   - Amazon EventBridge triggers Lambda every 15 minutes

---

## ✅ Outcomes

- Automated data scraping pipeline that runs without manual intervention
- Scalable architecture for real-time utility data monitoring
- Hands-on experience with AWS serverless tools and deployment strategies
