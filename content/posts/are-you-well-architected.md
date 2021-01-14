---
title: "Are You Well-Architected?"
date: 2021-01-14T19:42:22-03:00
draft: false
tags: ["aws"]
author: "Elvis Finol"
---

![](https://paper-attachments.dropbox.com/s_BE523204EB7E00F49886081ED646E27E79DE3527872E031CEA88AA687A0908E4_1610662942090_image.png)

## What is AWS Well-Architected Framework?

To be able to help businesses make the right decisions while building their systems on the cloud, AWS well-architected framework provides a consistent set of best practices. Businesses can refer to these and evaluate how well their architecture is aligned to AWS best practices.
The AWS reference architecture comprises of the foundational questions based on the experience of thousands of customers. The goal of the AWS well architected structure being simple – enable customers to measure the AWS architecture against best practices and address shortcomings.

**1. Operational Excellence**
In simple words, operational excellence refers to the enhanced ability to run systems and monitor operations for delivering business value. It also takes into account the continuous improvement of supporting processes and procedures.
The three actionable that complete the definition of Operation excellence in an AWS well architected framework are: Prepare, Operate, Evolve.

- **Prepare:** The preparation step requires you to understand your workloads. Having done that you will then be able to design and build the procedures to support your work.
- **Operate:** In this step, you define the metrics and measure operational outcomes against them. This will help you understand your operational health, and identify where you need to improve.
- **Evolve:** Based on your operational health, the next step of achieving operational excellence lies in evolution. In this step, you implement frequent small incremental changes based on your previous efforts

**The Operational excellence pillar is what is used to derive the six design principles of an AWS architecture diagram:**

- Perform operations as code
- Annotate documentation
- Make small changes that are reversible
- Refine operations frequently
- Anticipate failure
- Learn and document outcomes, even failures

**2. Security**
This pillar refers to the ability to safeguard systems, information, and assets using risk assessment as well as mitigation, so as to help achieve business value in a secure manner. The security pillar of an AWS architecture includes identity and access management, detective controls, infrastructure protection, data protection, and incident response.

- **Identity and access management:** Absolutely critical for data and information security, identity and access management ensures that only authorized and authenticated users have access to your information and resources, just as much as intended and approved by you.
- **Detective controls:** An essential part of the governance framework, detective controls can be used for identifying potential security threats. Any anomalous activity while setting up the AWS architecture can be investigated using these controls.
- **Infrastructure protection:** Encompassing a set of methodologies, infrastructure protection ensures that your systems and services are safe from unintended, unauthorized access, and guard against potential vulnerabilities.
- **Data protection:** Data classification, encryption, protection of data at rest as well as in transition, data recovery, and any other possible measure that protects data from theft or loss, is included in the purview of data protection.
- **Incident response:** Even with tight governance and security in place, you arent completely risk-free. Having incident response management in place makes sure that if at all a security incident takes place, it does not affect the ability of your teams to operate efficiently. Additionally, it helps mitigate the effect of that incidence.

**The design principles hence derived from the security pillar in an AWS architecture diagram are as follows:**

- Build a strong identity foundation and define access rules
- Create traceability
- Automate security
- Protect data in transit and at rest
- Prepare for security events

In order to apply best practices, they have created [**AWS Well-Architected Labs**](https://wellarchitectedlabs.com/?ref=wellarchitected-wp), which provides you with a repository of code and documentation to give you hands-on experience implementing best practices.

**3. Cost-optimization**
For every business, cost optimization can make a huge difference to the bottom line. This pillar in the AWS well architected checklist serves as the foundation of removing all practices that add unnecessary costs or suboptimal resources, thereby benefiting the business.
The best practices laid down by Amazon solutions architect in the AWS well-architected framework help businesses build processes without worrying about the resources. It helps them achieve this by utilizing cost-effective resources, matching supply with demand, expenditure awareness and continual optimizing over time.

- **Utilizing cost-effective resources:** Comprises right-sizing, appropriate provisioning, managed services, careful geographic selection, and purchase options that suit your business needs.
- **Matching supply with demand:** Moving to the cloud has one big advantage – you pay only for what you require. When IT service supply matches the demand right at the time theyre needed, you dont need to waste your resources on overprovisioning
- **Expenditure awareness:** You need to identify your cost drivers so as to set benchmarks to optimize expenditure. The cost can be considerably reduced (and curbed from being wasted) once you can correctly attribute resource costs to the systems, individual business, or product owners. Accurate cost attribution allows you to identify the profitable business units and products, enabling you to intelligently allocate resources.
- **Optimizing over time:** Measuring and monitoring cost-optimization metrics can help you discover how large or less is your resource utilization gap is. Continuously working on reducing this gap will make you more and more cost-effective over time.

**This pillar serves as an AWS well-architected framework tool to derive the following design principles:**

- Work out a consumption model
- Measure overall cost efficiency
- Dont waste money and resources on data center operations
- Analyze expenditure and allocate to profitable business units
- Reduce the cost of ownership

**4. Reliability**
The pillar of reliability encompasses practices that enable a system to recover from disruptions, make available computing resources to meet service demand, as well as address misconfigurations or transient network issues in the AWS architecture.
At the core of reliabilitys definition is serviceability. By definition, service availability reduces any time the application isnt operating normally – be it because of scheduled or unscheduled interruptions. To measure and improve availability, you first need to understand system dependencies with the help of an AWS solution architect associate.
It is also just as important to take into consideration the cost for availability under this pillar. Designing applications for higher levels of availability spell additional costs. Therefore, you need to first analyze and identify your exact availability needs before embarking on application design. 

**The design principles hence derived from the security pillar are as follows:**

- Test your recovery procedures in case of interruptions
- Increase aggregate system availability
- Measure the cost of designing an application with high availability levels
- Don’t guess capacity

**5.Performance efficiency**
This pillar emphasizes on efficiently utilizing computing resources to meet business requirements. It also establishes practices on how to maintain that efficiency as your business scales, demands grow, and technologies evolve.
The four main components of performance efficiency in an AWS architecture diagram include selection, review, monitoring, and trade-offs.

- **Selection:** Selecting the optimal solution for your business depends on the kind of workload involved. This optimal solution is often a mix of approaches to help improve business performance, such as request-response, event-driven; extract, pipeline, etc.
- **Review:** Initially when you implement your first AWS architecture solution, you have limited choices. However, with time, it becomes easier to adopt new features and experiment. By reviewing the results of your previous architecture and new ones, you can see how you are progressing. For example, you can use visualization techniques to identify performance issues, hot spots, as well as low utilization areas.
- **Monitoring:** After implementing your architecture you need to continuously monitor it for performance and take corrective actions as and when problems arise. Corrective measures need to be quickly deployed so that you can resolve problems before your customers are aware of them.
- **Trade-offs:** An AWS solution architect associate will always keep trade-offs in mind. To suit your business needs and for delivering a higher performance you can set up the framework for trade durability versus time.

**The design principles hence derived from the security pillar are as follows:**

- Experiment often
- Have performance metrics in place
- Focus on going global as you evolve
- Use serverless architectures

References
**
- *https://d1.awsstatic.com/whitepapers/architecture/AWS_Well-Architected_Framework.pdf*
