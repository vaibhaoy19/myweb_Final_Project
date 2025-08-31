# 🚀 Automated CI/CD Pipeline for Java-Based Web Application using Jenkins, Docker, Maven, and AWS EKS

![CI/CD](https://img.shields.io/badge/CI/CD-Automation-blue)  
![AWS](https://img.shields.io/badge/Cloud-AWS-orange)  
![DevOps](https://img.shields.io/badge/DevOps-Practices-green)

---

## 📌 Project Overview
This project demonstrates the implementation of a **fully automated CI/CD pipeline** for deploying a **Java-based web application** using **Jenkins, Maven, Docker, Kubernetes (EKS), and AWS Cloud services**.  

The pipeline automates the workflow from **code commit → build → containerization → deployment → end-user access**, ensuring **fast delivery, scalability, and zero-downtime deployments**.

---

## 📊 Architecture Workflow

```mermaid
flowchart LR
    A[👨‍💻 Developer] -->|Push Code| B[📂 GitHub Repository]
    B -->|Trigger Build| C[⚙️ Jenkins CI/CD]
    C -->|Build Artifact| D[📦 Maven (.jar/.war)]
    D -->|Build Image| E[🐳 Docker]
    E -->|Push Image| F[📦 Docker Hub]
    F -->|Pull Image| G[☸️ AWS EKS Cluster]
    G -->|Deploy Pods| H[🌐 NodePort Service]
    H -->|Access App| I[👩‍💻 End User]

## 🔄 Workflow Steps
Developer pushes code to GitHub repository.

Jenkins detects changes and triggers the pipeline.

Maven builds the project and generates .jar/.war artifacts.

Docker builds a container image and pushes it to Docker Hub.

AWS EKS (Kubernetes) pulls the image and deploys it as Pods.

Application is exposed via NodePort service for end-users.

## 🛠️ Tools & Technologies
AWS: EC2, VPC, IAM, EKS, S3, CloudWatch

CI/CD: Jenkins, Maven

Containerization: Docker

Orchestration: Kubernetes (EKS)

Version Control: GitHub

Monitoring: CloudWatch, kubectl logs

⚙️ Jenkinsfile (Pipeline as Code)
groovy
Copy code
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/your-repo.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t your-dockerhub-user/java-app:$BUILD_NUMBER .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh '''
                docker login -u your-dockerhub-user -p $DOCKER_HUB_PASS
                docker push your-dockerhub-user/java-app:$BUILD_NUMBER
                '''
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
            }
        }
    }
}
📂 Kubernetes YAML Files
deployment.yaml
yaml
Copy code
apiVersion: apps/v1
kind: Deployment
metadata:
  name: java-app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: java-app
  template:
    metadata:
      labels:
        app: java-app
    spec:
      containers:
      - name: java-app
        image: your-dockerhub-user/java-app:latest
        ports:
        - containerPort: 8080
service.yaml
yaml
Copy code
apiVersion: v1
kind: Service
metadata:
  name: java-app-service
spec:
  type: NodePort
  selector:
    app: java-app
  ports:
    - port: 8080
      targetPort: 8080
      nodePort: 30007
## 📸 Screenshots
📍 Place your screenshots inside a folder named screenshots/ in your repo.

Application Running in Browser:

Jenkins CI/CD Pipeline:

Kubernetes Pods & Services:

## 🔑 Key Highlights
End-to-End CI/CD Pipeline: GitHub → Jenkins → Maven → Docker → AWS EKS

Scalable & Highly Available: Multi-pod Kubernetes deployment

Artifact Management: Maven + Docker Hub

Automated Deployment: Kubernetes NodePort service

Monitoring & Logging: CloudWatch & kubectl logs

Security: IAM roles & policies for safe integration

👤 Author
Vaibhao Yenchalwar
📧 Email: vaibhaoy1908@gmail.com
🔗 GitHub: vaibhaoy19
