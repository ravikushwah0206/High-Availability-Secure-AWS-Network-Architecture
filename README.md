# High-Availability-Secure-AWS-Network-Architecture

This repository contains an automated infrastructure template to deploy a highly available, secure, and production-ready network architecture on AWS. The design isolates application workloads in private subnets while ensuring internet access via NAT Gateways and secure remote management via a VPN.

# Architecture Overview

The infrastructure consists of the following AWS components:
1: Custom VPC: Built across 2 Availability Zones (AZs) with separate Public and Private Subnets to isolate resources.
2: NAT Gateways: Deployed in the public subnets to allow secure outbound internet connectivity for instances in the private subnets (e.g., for software patches/updates).
3: Network Load Balancer (NLB): Positioned to route high-throughput, low-latency traffic straight to the application tier.
4: Auto Scaling Group (ASG): Configured to automatically launch or terminate EC2 instances in private subnets based on incoming traffic demand.
5: AWS Client VPN Endpoint: Configured to allow secure, encrypted remote access for administrators straight into the private subnets without exposing resources to the public internet.

# Network Design Matrix

| Subnet Type | Availability Zone A | Availability Zone B |
| Public | Subnet-Public-1A | Subnet-Public-2B | NAT Gateways, NLB Entrypoints |
| Private | Subnet-Private-1A | Subnet-Private-2B | EC2 Instances, Auto Scaling |

# How to Deploy This Infrastructure

You can deploy this entire stack using the provided AWS CloudFormation template (`infrastructure-template.yaml`):

1. Log in to your AWS Management Console.
2. Navigate to CloudFormation and click Create Stack.
3. Upload the `infrastructure-template.yaml` file from this repository.
4. Specify your parameters (VPC CIDR block, EC2 Key Pair name for VPN users).
5. Click Deploy. AWS will automatically provision the VPC, Gateways, Load Balancers, and Auto Scaling rules in under 10 minutes.

# Key Skills Demonstrated

Secure multi-AZ VPC Subnetting & Routing architecture.
High-throughput load balancing and traffic engineering (NLB).
Cost-effective, event-driven infrastructure scaling (ASG).
Enterprise-grade secure remote network management (Client VPN).
