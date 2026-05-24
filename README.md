🚀 CI/CD Kubernetes Multi-Environment Project

This project demonstrates a complete CI/CD pipeline using GitHub Actions and Kubernetes with multi-environment deployment (Dev, Test, Prod).

---

# 📌 Project Architecture

↓
GitHub (dev / test / prod branches)
↓
GitHub Actions CI/CD Pipeline
↓
Kubernetes Cluster
↓
Namespaces (dev / test / prod)
↓

Application Deployment
---

# 📁 Project Structure

```

ci-cd-terraform-v1/
│
├── app/
│   ├── index.html
│   └── Dockerfile
│
├── k8s/
│   ├── dev/
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   │
│   ├── test/
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   │
│   └── prod/
│       ├── deployment.yaml
│       └── service.yaml
│
└── .github/
    └── workflows/
        └── ci-cd.yml⚙️ CI/CD Pipeline Flow

⚙️ CI/CD Pipeline Flow

GitHub

Push to dev → Deploy to Development environment
Push to test → Deploy to Testing environment
Push to prod → Deploy to Production environment
☸️ Kubernetes Strategy

Kubernetes

Each environment has its own folder:
k8s/dev
k8s/test
k8s/prod
Deployments are isolated per environment
Uses declarative YAML approach
🔄 CI/CD Workflow (GitHub Actions)
on:
  push:
    branches:
      - dev
      - test
      - prod

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3

      - name: Deploy DEV
        if: github.ref == 'refs/heads/dev'
        run: kubectl apply -f k8s/dev/

      - name: Deploy TEST
        if: github.ref == 'refs/heads/test'
        run: kubectl apply -f k8s/test/

      - name: Deploy PROD
        if: github.ref == 'refs/heads/prod'
        run: kubectl apply -f k8s/prod/
🧠 Key Concepts Used
CI/CD Automation
Git Branching Strategy
Kubernetes Deployments
Declarative Infrastructure
Environment Isolation
📊 Deployment Flow Diagram

Dev Push → GitHub Actions → k8s/dev → Running App  
Test Push → GitHub Actions → k8s/test → Testing App  
Prod Push → GitHub Actions → k8s/prod → Production App  

🛠️ Tech Stack
GitHub Actions
Kubernetes
Docker
Linux
YAML
🚀 How to Run
# Apply DEV
kubectl apply -f k8s/dev/

# Apply TEST
kubectl apply -f k8s/test/

# Apply PROD
kubectl apply -f k8s/prod/
"README.md" 118 lines, 2401 bytes
