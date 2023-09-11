# Ansible Test Playbook 🎭

![Lab-X.io Logo](img/logo.png)

Welcome to the `ansible-test-playbook` repository by Lab-X.io! This project is designed to ease the Ansible playbook testing process. By utilizing a Docker container equipped with Ansible, we ensure a consistent and streamlined testing environment.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- A Docker-based testing environment leveraging the `devxio/ansible:v1.0.0` container.
- Quick and simple setup, allowing you to focus on playbook development.
- A handy alias for executing Ansible commands within the Docker container.
- Real-time development and testing capabilities by binding your local Ansible directory to the container.

## Getting Started

1. **Clone the Repository**:
   
   ```bash
   git clone https://github.com/lab-x-io/ansible-test-playbook.git
   cd ansible-test-playbook
   ```

2. **Set Up the Alias**:
   
   Add the following alias to your shell configuration (like `.bashrc` or `.zshrc`):

   ```bash
   alias ansible="docker run -it --rm -v $(pwd):/ansible devxio/ansible:v1.0.0"
   ```

   Reload your shell configuration:

   ```bash
   source ~/.bashrc  # or source ~/.zshrc
   ```

3. **Run Ansible Commands**:
   
   With the alias set, you can now use the `ansible` command in your terminal as if it were installed locally. The command runs inside the Docker container and operates on your bound directory.

## Usage

The magic lies in the simplicity! With the alias set up, you can use the `ansible` command just like you would if it were installed on your machine. The `ansible-test-playbook` repository is designed to be your working directory. As you develop and test playbooks, they operate within the Docker container, ensuring consistency.

For a deeper dive and more detailed instructions, check out our [docs/USAGE.md](docs/USAGE.md) guide.

## Contributing

Hey there, fellow coder! 🚀 If you're interested in contributing, we'd love to have you. Before diving in, please take a moment to review our [CONTRIBUTING.md](docs/CONTRIBUTING.md) guidelines.

## License

This project is under a specific license. For more information and details, please refer to the [LICENSE](LICENSE) file.

---

Thank you for your interest in `ansible-test-playbook` by Lab-X.io! We value your contributions and feedback. Enjoy crafting those playbooks! 🎉