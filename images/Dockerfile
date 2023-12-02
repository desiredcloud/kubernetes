# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Set the root user password (for illustration purposes; consider security implications)
RUN echo 'root:password' | chpasswd

# Install sudo
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

RUN apt-get update -y 

RUN apt-get install curl -y

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

RUN chmod +x kubectl

RUN mv kubectl /usr/local/bin/kubectl

RUN curl -LO "https://github.com/kastenhq/external-tools/releases/download/6.0.11/k10tools_6.0.11_linux_amd64.tar.gz"

RUN curl -LO "https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit.tar.gz"

RUN tar -xzvf openshift-origin-server-v3.11.0-0cbc58b-linux-64bit.tar.gz

RUN mv openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/oc /usr/local/bin/oc

RUN tar -xzvf k10tools_6.0.11_linux_amd64.tar.gz

RUN mv k10tools /usr/local/bin/k10tools

RUN mkdir /tmp/config

ENV KUBECONFIG=/tmp/config

# Create a non-root user with sudo privileges
RUN useradd -m user && echo 'user:password' | chpasswd && adduser user sudo

# Allow passwordless sudo for the user
RUN echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Set the default user to the non-root user
USER user

# Set the working directory to the user's home directory
WORKDIR /home/user

