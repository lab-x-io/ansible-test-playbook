# Usage Guide for Ansible Test Playbook 🎭

This document provides detailed instructions on how to utilize the `ansible-test-playbook` containerized environment for testing Ansible playbooks.

## Table of Contents

- [Building the Image](#building-the-image)
- [Running the Container](#running-the-container)
- [Binding Playbooks and SSH Keys](#binding-playbooks-and-ssh-keys)
- [Stopping the Container](#stopping-the-container)
- [Removing the Container](#removing-the-container)

## Building the Image

Before running the container, you should build the Docker image:

```bash
docker build -t lab-x-io/ansible-test-playbook:latest .
```

## Running the Container

To run the `ansible-test-playbook` environment:

```bash
docker run -it --name ansible_test_container lab-x-io/ansible-test-playbook:latest
```

## Binding Playbooks and SSH Keys

To make your local playbooks and SSH keys accessible inside the container:

1. **Bind your playbooks**:

   Append `-v /path/to/your/local/playbooks:/ansible/playbooks` to the `docker run` command.

   Example:

   ```bash
   docker run -it -v /path/to/your/local/playbooks:/ansible/playbooks --name ansible_test_container lab-x-io/ansible-test-playbook:latest
   ```

2. **Bind your SSH keys**:

   Append `-v /path/to/your/local/.ssh:/home/ansible/.ssh` to the `docker run` command.

   Example:

   ```bash
   docker run -it -v /path/to/your/local/.ssh:/home/ansible/.ssh --name ansible_test_container lab-x-io/ansible-test-playbook:latest
   ```

You can combine both bindings:

```bash
docker run -it -v /path/to/your/local/playbooks:/ansible/playbooks -v /path/to/your/local/.ssh:/home/ansible/.ssh --name ansible_test_container lab-x-io/ansible-test-playbook:latest
```

## Stopping the Container

To halt the `ansible-test-playbook` environment:

```bash
docker stop ansible_test_container
```

## Removing the Container

If you need to remove the container:

```bash
docker rm ansible_test_container
```

---

We trust this guide clarifies the steps to utilize the `ansible-test-playbook` containerized environment. For any challenges or further inquiries, kindly refer to the main `README.md` or open a GitHub issue.
