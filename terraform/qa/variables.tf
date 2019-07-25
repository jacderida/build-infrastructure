variable "region" {
  default = "eu-west-2"
  description = "The AWS region to use"
}

variable "environment_name" {
  default = "qa"
  description = "Name for the environment. Just used to reduce maintenance."
}

variable "subnet_name" {
  default = "jenkins_environment-qa"
  description = "The name for the subnet used in the VPC"
}

variable "jenkins_elastic_ip" {
  default = "eipalloc-0adff716e8b7c80a7"
  description = ""
}

variable "availability_zones" {
  default = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  description = "The availability zones to use"
}

variable "ansible_key_pair" {
  default = "ansible-qa"
  description = "The key pair for the Bastion instance"
}

variable "haproxy_key_pair" {
  default = "haproxy-qa"
  description = "The key pair for the HAProxy instance"
}

variable "jenkins_key_pair" {
  default = "jenkins-qa"
  description = "The key pair for the Jenkins master instance"
}

variable "docker_slave_key_pair" {
  default = "docker_slave-qa"
  description = "The key pair for the Jenkins master instance"
}

variable "windows_slave_key_pair" {
  default = "windows_slave-qa"
  description = "The key pair for any Windows slaves"
}

variable "windows_bastion_key_pair" {
  default = "windows_bastion-qa"
  description = "The key pair for the Windows bastion"
}

variable "jenkins_master_ami" {
  default = {
    eu-west-2 = "ami-0883141bc92a74917"
  }
  description = "AMI for Jenkins Master (Ubuntu 18.04)"
}

variable "jenkins_master_instance_type" {
  default = "t2.medium"
  description = "Instance type for Jenkins Master"
}

variable "docker_slave_ami" {
  default = {
    eu-west-2 = "ami-0eab3a90fc693af19"
  }
  description = "AMI for Docker slaves (CentOS 7.6)"
}

variable "docker_slave_instance_type" {
  default = "t2.micro"
  description = "Instance type for Docker slaves"
}

variable "ansible_ami" {
  default = {
    eu-west-2 = "ami-0eab3a90fc693af19"
  }
  description = "AMI for Ansible (CentOS 7.6)"
}

variable "ansible_instance_type" {
  default = "t2.micro"
  description = "Instance type for Ansible machine"
}

variable "haproxy_ami" {
  default = {
    eu-west-2 = "ami-0883141bc92a74917"
  }
  description = "AMI for HAProxy (Ubuntu 18.04)"
}

variable "haproxy_instance_type" {
  default = "t3.micro"
  description = "Instance type for HAProxy machine"
}

variable "windows_ami" {
  default = {
    eu-west-2 = "ami-0f4aa3b4c3d030efd"
  }
  description = "AMI for Windows slave (Windows 2016)"
}

variable "windows_slave_count" {
  default = 3
  description = "Determines the number of Windows slaves"
}

variable "windows_instance_type" {
  default = "t3.small"
  description = "Instance type for Windows slave machine"
}

variable "windows_bastion_count" {
  default = 0
  description = "Set this to 1 if you need a Windows Bastion host for debugging problems with the Windows slave in the private subnet."
}

variable "ansible_security_group" {
  default = "ansible-qa"
  description = "Name of the security group for the Ansible instance"
}

variable "haproxy_security_group" {
  default = "haproxy-qa"
  description = "Name of the security group for the HAProxy instance"
}

variable "jenkins_security_group" {
  default = "jenkins_master-qa"
  description = "Name of the security group for the Jenkins master instance"
}

variable "linux_slaves_security_group" {
  default = "linux_slaves-qa"
  description = "Name of the security group for the Linux slaves"
}

variable "windows_slaves_security_group" {
  default = "windows_slaves-qa"
  description = "Name of the security group for any Windows slaves"
}

variable "windows_bastion_security_group" {
  default = "windows_bastion-qa"
  description = "Name of the security group for the Windows bastion"
}
