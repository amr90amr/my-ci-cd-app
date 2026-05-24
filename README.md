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

"README.md" 118 lines, 2401 bytes
