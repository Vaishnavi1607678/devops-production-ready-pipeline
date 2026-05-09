#  DevOps Production-Ready Application Deployment

##  Overview

This project demonstrates a **production-ready DevOps pipeline** by deploying a containerized application on AWS using modern DevOps practices such as:

* Infrastructure as Code (Terraform)
* Containerization (Docker)
* Cloud Deployment (AWS EC2)
* CI/CD Pipeline (GitHub Actions)
* Monitoring & Logging (CloudWatch / Docker logs)

The goal is to showcase real-world DevOps skills including **automation, scalability, and reliability**.

<img width="571" height="691" alt="image" src="https://github.com/user-attachments/assets/ef1c6b91-5f47-40e7-9989-3956de97fde7" />


##  Architecture

```
Developer → GitHub → CI/CD Pipeline → Docker Hub → AWS EC2 → Running Container → End User
```

### Flow Explanation:

1. Developer pushes code to GitHub
2. CI/CD pipeline builds Docker image
3. Image is pushed to Docker Hub
4. EC2 instance pulls the latest image
5. Container runs and serves the application

---

##  Tech Stack

<img width="910" height="428" alt="image" src="https://github.com/user-attachments/assets/75118e32-69d8-44fa-b494-37b8cbe099e9" />


##  Project Structure

```
Developer → GitHub → CI/CD Pipeline → Docker Hub → AWS EC2 → Running Container → End User
```
<img width="1084" height="339" alt="image" src="https://github.com/user-attachments/assets/e7073288-ff09-4f09-8dee-66349c0fe879" />

##  Setup & Deployment Steps

### 1️⃣ Clone Repository

```bash
git clone https://github.com/<your-username>/devops-production-ready-pipeline.git
cd devops-production-ready-pipeline
```

---

### 2️⃣ Build Docker Image

```bash
docker build -t devops-app .
```

---

### 3️⃣ Push Image to Docker Hub

```bash
docker tag devops-app <docker-username>/devops-app:latest
docker push <docker-username>/devops-app:latest
```

---

### 4️⃣ Deploy on AWS EC2

```bash
docker pull <docker-username>/devops-app:latest
docker run -d -p 3000:3000 <docker-username>/devops-app:latest
```

---

### 5️⃣ Access Application

```
http://<EC2_PUBLIC_IP>:3000
```

---

##  CI/CD Pipeline

The pipeline automates:

* Code build
* Docker image creation
* Image push to Docker Hub
* Deployment to EC2
<img width="1079" height="369" alt="image" src="https://github.com/user-attachments/assets/dc786718-9c55-4c1b-9ab4-abab06296fb2" />

Triggered on:

* `git push`

---

##  Infrastructure (Terraform)

Terraform provisions:

* EC2 instance
* Security Group (ports 22 & 3000)
* Networking configuration
<img width="1100" height="536" alt="image" src="https://github.com/user-attachments/assets/e45c238d-d51c-47c3-90e3-70d7bcf8f3be" />
### Run Terraform:

```bash
terraform init
terraform apply
```

---

##  Monitoring & Logging

* Docker logs used for application monitoring
* AWS CloudWatch can be integrated for production-level monitoring
<img width="1065" height="305" alt="image" src="https://github.com/user-attachments/assets/284a1506-8f66-4637-8205-b04965329e07" />


##  Security Considerations

* SSH access via key pair
* Security groups restrict inbound traffic
* Avoid use of long-term AWS credentials

---

##  Assumptions

* AWS account is pre-configured
* Docker is installed locally and on EC2
* Docker Hub account exists

---

##  Limitations

* Single EC2 instance (no auto-scaling)
* Basic monitoring setup
* No load balancer

---

##  Future Improvements

* Use AWS ECS/EKS for orchestration
* Add Load Balancer (ALB)
* Implement Auto Scaling
* Integrate full CloudWatch monitoring
* Add HTTPS with SSL

---

##  Key Achievements

* Fully automated deployment pipeline
* Containerized application delivery
* Cloud-based scalable deployment
* Real-world DevOps workflow implementation

---

<img width="1920" height="1080" alt="Screenshot (1284)" src="https://github.com/user-attachments/assets/1845578f-d5a4-4f92-8b8e-e3c8921b99f8" />


<br><br>


<img width="1920" height="1080" alt="Screenshot (1285)" src="https://github.com/user-attachments/assets/374765ba-9243-4243-b2f7-e33d2c162c7a" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1286)" src="https://github.com/user-attachments/assets/f1b545f8-b613-4fe9-b88b-739a28a462a1" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1287)" src="https://github.com/user-attachments/assets/2c3e3278-916d-4fe3-a7b9-1ec38d5d21be" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1288)" src="https://github.com/user-attachments/assets/e665996f-4799-4484-8bd0-93fa3e40a470" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1282)" src="https://github.com/user-attachments/assets/86e15eec-9563-4cc1-8924-1c3908d388d3" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1283)" src="https://github.com/user-attachments/assets/75d371e8-b88a-487a-b7c7-4ee05b220e98" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1292)" src="https://github.com/user-attachments/assets/def2bd1f-f1bf-4ec9-b10c-0629f03507e6" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1291)" src="https://github.com/user-attachments/assets/54f7a773-5778-4ff1-a761-4ec3e0bbb443" />

<br><br>

<img width="1920" height="1080" alt="Screenshot (1290)" src="https://github.com/user-attachments/assets/7db742b9-5202-459c-8c6f-91ff36ad9551" />

<br><br>



## Final Output- 

<img width="1920" height="1080" alt="Screenshot (1289)" src="https://github.com/user-attachments/assets/ec3c366d-9d61-4f12-89b2-5ba0288c1155" />

<br><br>

https://github.com/user-attachments/assets/1f3fe4e6-f788-4553-9172-3779ade81a6d

<br><br>

## Complete short video of the entire task performed

https://github.com/user-attachments/assets/1e2ff0ca-09ed-4a20-9fa7-d7acaeee3d16





##  Author

**Vaishnavi Tikke**

---

##  Conclusion

This project demonstrates the ability to design and implement a **complete DevOps lifecycle**, from development to deployment, using industry-standard tools and best practices.

---

> "Automation is not just a tool — it's a mindset for building reliable systems." 





