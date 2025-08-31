# 🚀 Automated Web Application CI/CD Pipeline using Jenkins, Docker, Maven, and AWS EKS

![GitHub repo size](https://img.shields.io/github/repo-size/vaibhaoy19/myweb_Final_Project)
![Docker](https://img.shields.io/badge/Docker-Enabled-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-blue)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-red)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange)

---

## 📌 Project Overview
This project implements a **CI/CD pipeline** to automate the deployment of a **Java-based web application**.  
The pipeline integrates **GitHub, Jenkins, Maven, Docker, Kubernetes (AWS EKS)** and uses **Docker Hub** for container image storage.

---

## 📊 Architecture Workflow
![CI/CD Architecture](screenshots/final_architecture.png)

**🔹 Workflow Steps:**
1. 👨‍💻 **Developer** pushes source code to **GitHub**  
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
- **IaC (Optional)**: Terraform/CloudFormation  
- **Monitoring**: CloudWatch, Prometheus, Grafana  

---

## 📂 Project Structure
📁 myweb_Final_Project
│── README.md
│── Jenkinsfile
│── deployment.yaml
│── service.yaml
│── screenshots/
│ ├── final_architecture.png
│ ├── app-ui.png
│ ├── jenkins-pipeline.png
│ └── k8s-pods.png

python
Copy code

---

## ⚙️ Jenkins Pipeline (Jenkinsfile)
```groovy
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps { git 'https://github.com/vaibhaoy19/myweb_Final_Project.git' }
        }
        stage('Build with Maven') {
            steps { sh 'mvn clean package' }
        }
        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t vaibhaoy19/myweb_app:latest .'
                sh 'docker push vaibhaoy19/myweb_app:latest'
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
☸️ Kubernetes Deployment
deployment.yaml

yaml
Copy code
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
        image: vaibhaoy19/myweb_app:latest
        ports:
        - containerPort: 8080
service.yaml

yaml
Copy code
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
📸 Screenshots
🔹 1. Application Home Page

🔹 2. Jenkins Pipeline

🔹 3. Kubernetes Pods

🌟 Key Highlights
✅ End-to-End CI/CD Pipeline → GitHub → Jenkins → Maven → Docker → Docker Hub → AWS EKS
✅ Kubernetes Orchestration with high availability & self-healing Pods
✅ Artifact Management using Maven & Docker Hub
✅ Automated Deployment with Kubernetes NodePort Service
✅ Monitoring & Logging using AWS CloudWatch & kubectl logs
✅ Security via IAM roles & permissions

