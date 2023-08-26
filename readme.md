# 🅰️ Ansible roles & playbook to configure MongoDB sharded cluster

🌟 Welcome to the Ansible repository dedicated to setting up and configuring a robust MongoDB sharded cluster effortlessly. This repository provides well-structured Ansible roles and a playbook designed to streamline the deployment process. If you're looking to deploy a scalable MongoDB sharded cluster, you're in the right place!

## 🏠 Architecture
![Architecture of the application](architecture.gif)

## 🔖 Prerequisites: Installing Ansible and Required Packages on Ubuntu

```sh
#!/bin/bash

sudo apt update -y

sudo apt install software-properties-common -y

sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt install ansible -y

sudo apt update -y

# sudo apt install zip unzip -y

# curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# unzip awscliv2.zip

# sudo ./aws/install

sudo apt install python3-pip -y

sudo apt update -y

pip install boto3

sudo apt  install jq -y
```
## Full Blog
[Blog](https://ankitjodhani.hashnode.dev/production-ready-mongodb-cluster-nginx-on-aws-using-ansible-and-terraform-highly-available-and-fault-tolerant) 


## 📦 Cloning the Repository

```sh
git clone https://github.com/AnkitJodhani/Ansible-Production-ready-mongodb-project6.git
cd Ansible-Production-ready-mongodb-project6

```

## ⚓ Configuration: Tailoring the Setup to Your Needs
Before running the playbook, you'll need to configure the necessary parameters. Depending on your infrastructure, you might have to edit the following files:

**Note**: We assume that you already have the servers running on the Cloud or On-premises. If you haven't created the infrastructure and intend to set up a cluster, we have provided a Terraform script for AWS that is fully compatible with the cluster's architecture. As depicted in the diagram above, you can access the Terraform script repository here [Terraform script](https://github.com/AnkitJodhani/Terraform-Production-ready-mongodb-project6.git) 

### 🛠️ Configuring MongoDB Cluster

For MongoDB cluster configuration, you can adjust the variables in the `group_vars/mongo_cluster` file. This includes specifying shard nodes, CSRS nodes, Mongos nodes, IP addresses, and authentication credentials:

```javascript
shard_list:
  - name: task1
    shard_name: shard_1
    shard_port: 27011
  - name: task2
    shard_name: shard_2
    shard_port: 27012
  - name: task2
    shard_name: shard_3
    shard_port: 27013


csrs_list:
  - name: task1
    csrs_name: csrs
    csrs_port: 26011
    
mongos_list:
  - name: task1
    mongos_port: 26000

shard_node1_ip: 172.20.7.141
shard_node2_ip: 172.20.8.200
shard_node3_ip: 172.20.9.174
csrs_node1_ip: 172.20.7.104
csrs_node2_ip: 172.20.8.126
csrs_node3_ip: 172.20.9.7
mongos_node1_ip: 172.20.7.200
mongos_node2_ip: 172.20.9.229


username: "{{lookup('env','username') }}"
password: "{{lookup('env','password') }}"
```

### 🔨 Configuring Nginx Cluster
If you also intend to configure an Nginx cluster across multiple servers, edit the `group_vars/nginx_cluster` file with the corresponding IP addresses:


```javascript
nginx_node1_ip: 172.20.4.237
nginx_node2_ip: 172.20.6.11
nginx_node3_ip: 172.20.5.39
```

## 🚀 Enhancing the Repository
We're continuously working on improving this repository. Your suggestions and contributions are highly valued. Here are a few ways to contribute:

We're thrilled to have you as part of our journey toward a seamless MongoDB sharded cluster deployment using Ansible. Let's make MongoDB scaling a breeze! 🚀

**Thank you so much for reading..😅**

