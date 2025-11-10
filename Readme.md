# 7-Day DevOps Challenge Journey

Welcome! This repository documents my personal 7-day DevOps challenge, progressing from beginner to advanced concepts. Each day, I tackled a new skill with hands-on practice and automation.

## Day 1: Project Bootstrap
- Bootstrapped the project, initialized a Git repository, and deployed a live app on my VM using `venv`.

## Day 2: Continuous Integration (CI)
- Added simple Python unit tests to the project.
- Configured GitHub Actions workflow to run tests automatically on every push/pull request.
- [![CI](https://github.com/Olaiwonismail/7-Day-DevOps/actions/workflows/ci.yml/badge.svg)](https://github.com/Olaiwonismail/7-Day-DevOps/actions)

## Day 3: Containerize with Docker
- Created a `Dockerfile` for the app.
- Built and ran Docker images locally.
- Pushed images to Docker Hub for sharing.

## Day 4: Configuration Management (Ansible)
- Wrote an Ansible playbook to automate package installation and app deployment on VM.
- Verified idempotence by running playbooks multiple times.

## Day 5: Monitoring and Logging
- Set up basic monitoring using Prometheus or Netdata.
- Enabled logging for the app and configured log rotation/archiving.
- Monitored resource usage and uptime.

## Day 6: Infrastructure as Code (IaC)
- Created a Terraform script to provision VM infrastructure.
- Automated setup by integrating Ansible playbook.
- Demonstrated reproducibility by destroying/recreating VM.

## Day 7: Full CI/CD Pipeline
- Extended GitHub Actions to automate build, test, and deploy steps on every commit.
- Validated deployments with code changes and automated rollouts.
- Documented troubleshooting steps for failed deployments.

---

**Reflection:**  
This week helped me build practical DevOps skills—automation, testing, containerization, configuration, monitoring, and Infrastructure as Code. I’m ready to dive deeper into cloud DevOps and scale up my learning!

