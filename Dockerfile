# Start from the base image
FROM devxio/ansible:develop

# Set maintainer label
LABEL maintainer="github@dev-x.io"

# Ensure the ansible user owns the ansible directory
RUN sudo chown ansible:ansible /ansible

# Clone the ansible-test-playbook repository from GitHub
RUN git clone https://github.com/lab-x-io/ansible-test-playbook.git /ansible

# Set the working directory to the cloned repository
WORKDIR /ansible

# The default command to run when the container starts
CMD ["ansible-playbook", "default.yml"]