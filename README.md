# 🚀 Automated Web Application CI/CD Pipeline using Jenkins, Maven, Docker, and AWS EKS

A **DevOps Project** implementing an **end-to-end CI/CD pipeline** for deploying a **Java-based web application** on **AWS Elastic Kubernetes Service (EKS)**.  
This project demonstrates **automation, scalability, and cloud-native deployment** with modern DevOps practices.

---

## 📌 Project Overview
- Automates software delivery from **code commit → build → containerization → deployment**.  
- Uses **GitHub, Jenkins, Maven, Docker, Docker Hub, and AWS EKS**.  
- Application exposed to end users via **Kubernetes NodePort Service**.  

---

## 📊 Architecture Workflow

![CI/CD Architecture](screenshots/final_architecture.png)

**Workflow Steps:**
1. 👨‍💻 Developer pushes source code to **GitHub**  
2. ⚙️ **Jenkins** detects changes and triggers pipeline  
3. 📦 **Maven** builds project & generates artifact (`.jar/.war`)  
4. 🐳 **Docker** builds container image  
5. 📦 Image is pushed to **Docker Hub**  
6. ☸️ **AWS EKS** pulls image & deploys as Pods  
7. 🌐 **NodePort Service** exposes the app to **End Users**

---

## 🛠️ Tools & Technologies
- **Cloud**: AWS (EKS, EC2, IAM, VPC, S3, CloudWatch)  
- **CI/CD**: Jenkins, GitHub  
- **Build Tool**: Maven  
- **Containerization**: Docker  
- **Orchestration**: Kubernetes (kubectl, eksctl)  
- **IaC (Optional)**: Terraform / CloudFormation  
- **Monitoring**: AWS CloudWatch, Prometheus, Grafana  

---

## 📂 Project Structure
```bash
📁 project-root
│── README.md
│── Jenkinsfile
│── deployment.yaml
│── service.yaml
│── screenshots/
│   ├── final_architecture.png
│   ├── app-ui.png
│   ├── jenkins-pipeline.png
│   └── k8s-pods.png

⚙️ Jenkins Pipeline (Jenkinsfile)

pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps { git 'https://github.com/your-username/your-repo.git' }
        }
        stage('Build with Maven') {
            steps { sh 'mvn clean package' }
        }
        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t your-dockerhub-user/your-app:latest .'
                sh 'docker push your-dockerhub-user/your-app:latest'
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

☸️ Kubernetes Manifests

deployment.yaml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp-deployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: myapp
        image: your-dockerhub-user/your-app:latest
        ports:
        - containerPort: 8080
service.yaml

apiVersion: v1
kind: Service
metadata:
  name: myapp-service
spec:
  type: NodePort
  selector:
    app: myapp
  ports:
    - port: 80
      targetPort: 8080
      nodePort: 30008

🌟 Key Highlights

End-to-End CI/CD Pipeline: GitHub → Jenkins → Maven → Docker → Docker Hub → AWS EKS

Kubernetes Orchestration: High availability & self-healing pods

Artifact Management: Maven for build artifacts, Docker Hub for images

Automated Deployment: Kubernetes NodePort Service for external access

Monitoring & Logging: AWS CloudWatch + kubectl logs

Security: IAM roles & permissions for safe integration

📸 Screenshots
🔹 1. Application Home Page

🔹 2. Jenkins Pipeline Execution

🔹 3. Kubernetes Pods Running

🎯 Project Summary

Framework: Java Web Application

CI/CD: Jenkins Pipeline

Containerization: Docker

Orchestration: AWS EKS (Kubernetes)

Outcome: Fully automated cloud-native deployment with high availability

🏆 Conclusion

This project demonstrates a professional DevOps pipeline integrating CI/CD, containerization, and cloud orchestration.
By leveraging Jenkins, Docker, Kubernetes, and AWS EKS, the application achieves:

Automation 🚀 | Scalability ☁️ | Reliability 🔧 | Security 🔐
