+++
author = "Elvis Finol"
date = 2021-09-04T22:00:00Z
tags = ["devops"]
title = "DevOps Concepts"

+++
![](https://miro.medium.com/max/874/1*_eJaw96xLBR-xEzlwbTOyw.png)

## **What is DevOps?**

**DevOps** is a set of practices that combines software development (_Dev_) and IT operations (_Ops_). It aims to shorten the systems development life cycle and provide continuous delivery with high software quality.

## Build Automation

##### **What is Build Automation?**

* **Build automation**: automation of the process of preparing code for deployment to a live environment
* Depending on what languages are used, code needs to be compiled, linted, minified, transformed, unit tested, etc.
* Build automation means taking these steps and doing them in a consistent, automated way using a script or tool
* The tools of build automation often differ depending on what programming languages and frameworks are used, but they have one thing in common: **automation**!

##### **What does Build Automation look like?**

* Usually, build automation looks like running a command-line tool that builds code using configuration files and/or scripts that are treated as part of the source code
* Build automation is independent of an IDE
* Even if you can build within the IDE, it should be able to work the same way outside the IDE
* As much as possible, build automation should be agnostic of the configuration of the machine that it is build on
* Your code should be able to build on someone else's machine the same way it builds on yours

##### **Why do Build Automation?**

* **Fast** - Automation handle tasks that would otherwise need to be done manually
* **Consistency** - The build happens the same way every time, removing problems and confusion that happen with manual builds
* **Repeatable** - The build can be done multiple times with the same results. Any version of the code can always be transformed into deployable code in a consistent way
* **Portable** - The build can be done the same way on any machine. Anyone on the team can be build on their machine, as well as on a shared build server. Building code doesn't depend on specific people or machines
* **Reliable** - There will be fewer problems caused by bad builds

## Continuous Integration

##### **What is Continuous Integration?**

* Continuous Integration (CI): the practice of frequently merging code done by developers
* Traditionally,  developers would work separately, perhaps for weeks at a time, and the merge all their work together at the end in one large effort
* CI means merging constantly thought out the day, usually with the execution of automated tests to detect any problems caused by the merge
* Merging all the time could be a lot of work, so to avoid that it should be automated

##### **What does Continuous Integration look like?**

* Continuous integration is usually done with the help of a CI server
* When a developer commits a code change, the CI server sees the change and automatically perform the build, also executing automated tests
* This occurs multiple times a day
* If there is any problem with the build, the CI server immediately and automatically notifies the developers
* If anyone commits code that "breaks the build" they are responsible for fixing the problem or rolling back their changes immediately so that other developers can continue working

##### **Why do Continuous Integration?**

* **Early detection** of certain types of bugs - If code doesn't compile or an automated test fails, the developers are notified and can fix it immediately. The sooner these bugs are detected, the easier they are to fix
* **Eliminate the scramble** to integrate just before a big release - The code is constantly merged, so there is no need to do a big merge at the end
* Make **frequent releases** possible - Code is always in a state that can be deployed to production
* Makes **continuous testing** possible - Since the code can always be run, QA testers can get their hands on it all throughout the development process, not just at the end
* Encourages **good coding practices** - Frequent commits encourages simple, modular code

## Continuous Delivery and Continuous Deployment

##### **What is Continuous Delivery?**

* Continuous Delivery (CD): the practice of continuously maintaining code in a deployable state
* Regardless of whether or not the decision is made to deploy, the code is always in a state that is able to be deployed
* Some terms Continuous Delivery and Continuous Deployment interchangeably, or simply use the abbreviation CD

##### **What is Continuous Deployment?**

* Continuous Deployment: the practice of frequently deploying small code changes to production
* Continuous Delivery is keeping the code in a deployable state. Continuous Delivery is actually doing the deployment frequently
* Some companies that do Continuous Deployment deploy to production multiple times a day
* There is no standard for how often you should deploy, but in general the more often you deploy the better
* With Continuous Deployment, deployments to production are routine and commonplace. They are not a big, scary event

##### **What does Continuous Delivery and Continuous Deployment look like?**

* Each version of the code goes through a series of states, such as automated build, automated testing and manual acceptance testing. The result of this process is an artifact or package that is able to be deployed
* When the decision is made to deploy, the deployment is automated. What the automated deployment looks like depends on the architecture, but no matter what the architecture is, the deployment is automated
* If a deployment causes a problem, it is quickly and reliably rolled back using and automated process
* Rollbacks aren't a big deal because the developers can redeploy a fixed version as soon as they have one available
* No one grips their desk in fear during a deployment, even if the deployment does cause a problem

##### **Why do Continuous Delivery and Continuous Deployment?**

* **Faster time-to-market** - Get features into the hands of customers more quickly rather than waiting for a lengthy deployment process that doesn't happen often
* **Fewer problems caused by the deployment process** - Since the deployment process is frequently used, any problems with the process are mo easily discovered
* **Lower risk** - The more changes are deployed at once, the higher the risk. Frequent deployments of only a few changes are less risky
* **Reliable rollbacks** - Robust automation means rollbacks are a reliable way to ensure stability for customers, and rollback don't hurt developers because they can roll forward with a fix as soon as they have one
* **Fearless deployments** - Robust automation plus the ability to rollback quickly means deployments are commonplace, everyday events rather than big, scary events

## Infrastructure as Code

##### **What is Infrastructure as Code?**

* Infrastructure as Code (IaC): manage and provision infrastructure through code and automation
* With infrastructure as code, instead of doing things manually, you use automation and code to create and change
  * Servers
  * Instances
  * Environments
  * Containers
  * Other infrastructure

##### **What does infrastructure as code look like?**

* Without infrastructure as code, you might:
  * SSH into a host
  * Issues a series of commands to perform the change
* With infrastructure as code:
  * Change some code or configuration files that can be used with an automation tool to perform changes
  * Commit them to source control
  * Use an automation tool to enact the changes defined in the code and/or configuration files
* With Infrastructure as code, provisioning new resources and changing existing resources are both done through automation

##### **Why do infrastructure as code?**

* **Consistency** in creation and management of resources - The same automation will run the same way every time
* **Reusability** - Code can be used to make the same change consistently across multiple hosts and can be used again in the future
* **Scalability** - Need a new instance? You can have one configured exactly the same way as the existing instances in minutes (or seconds)
* **Self-documenting** - With IaC, changes to infrastructure documents themselves to a degree. The way a server is configured can be viewed in source control, rather than being a matter of who logged in to the server and did something
* **Simplify the complexity** - Complex infrastructures can be stood up quickly once they are defined as code. A group of several interdependent servers can be provisioned on demand