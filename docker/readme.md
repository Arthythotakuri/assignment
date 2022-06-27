Question 1
Describe how you would approach designing a resilient and fault-tolerant hosting infrastructure with AWS for an application currently running on an on-premises load-balanced cluster of application servers and a single MySQL database server. How would you configure networking within that infrastructure? What AWS services would you use and why?
**Answer**
Export web files to an Amazon S3 bucket in us-west-1. Run the website directly out of Amazon S3. Launch a multi-Aamazon Zones MySQL Amazon RDS instance in prefred location. Import the data into Amazon RDS from the latest MySQL backup. Use Route 53 and create an alias record pointing to the elastic load balancer. For configure with existing infrasture i would use Amazon Route 53 as it is scalable and highly available Domain Name System (DNS) service that connects user requests to infrastructure running in AWS-such as Amazon EC2 instances, Elastic Load Balancing load balancers, or Amazon S3 buckets–and can also be used to route users to infrastructure outside of AWS.

Question 2
If you are given Windows 10 as your work machine (with 8-core CPUs and 16GB RAM), but you need to work with many Pythons and Linux Bash scripting along with many different Linux based docker containers. Assuming you cannot change the machine’s operating system and cannot re-partition any of the local HDDs; However, you have admin access to install software and enabling some Windows features. How would you setup your work environment on the machine?
**Answer**
I would use Amazon Web services Ec2 service to launch instances of required linux distribution and connect trough SSH network protocol using sutable SSH key.
