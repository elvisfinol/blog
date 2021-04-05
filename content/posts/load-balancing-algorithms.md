---
title: "Load Balancing [Concepts]"
date: 2021-04-05T18:36:20+02:00
draft: false
---

![LB-diagram](https://avinetworks.com/wp-content/uploads/2018/11/server-load-balancing-diagram.png)

## Table content

- [Concept](#concept)
- [How does it work](#how-does-it-work)
- [Algorithms](#algorithms)

## Concept
A load balancer is a device that acts as a reverse proxy and distributes network or application traffic across a number of servers. It helps scale horizontally across an ever-increasing number of servers.
## How does it work
- **Define IP or DNS name for LB:** Administrators define one IP address and/or DNS name for a given application, task, or website, to which all requests will come. This IP address or DNS name is the load balancing server.
- **Add backend pool for LB:** The administrator will then enter into the load balancing server the IP addresses of all the actual servers that will be sharing the workload for a given application or task. This pool of available servers is only accessible internally, via the load balancer.
- **Deploy LB:** Finally, your load balancer needs to be deployed — either as a proxy, which sits between your app servers and your users worldwide and accepts all traffic, or as a gateway, which assigns a user to a server once and leaves the interaction alone thereafter.
- **Redirect requests:** Once the load balancing system is in place, all requests to the application come to the load balancer and are redirected according to the administrator’s preferred algorithm.

## Algorithms

*There is a variety of load balancing methods, which use different algorithms best suited for a particular situation.*

**Round-robin load balancing** is one of the simplest and most used load balancing algorithms. Client requests are distributed to application servers in rotation. For example, if you have three application servers: the first client request to the first application server in the list, the second client request to the second application server, the third client request to the third application server, the fourth to the first application server and so on. 
This load balancing algorithm does not take into consideration the characteristics of the application servers i.e. it assumes that all application servers are the same with the same availability, computing and load handling characteristics.

**Weighted Round Robin** builds on the simple Round-robin load balancing algorithm to account for differing application server characteristics. The administrator assigns a weight to each application server based on criteria of their choosing to demonstrate the application servers traffic-handling capability. 

***If application server #1 is twice as powerful as application server #2 (and application server #3), application server #1 is provisioned with a higher weight and application server #2 and #3 get the same weight. If there five (5) sequential client requests, the first two (2) go to application server #1, the third (3) goes to application server #2, the fourth (4) to application server #3 and the fifth (5) to application server #1.***

**Least Connection load balancing** is a dynamic load balancing algorithm where client requests are distributed to the application server with the least number of active connections at the time the client request is received. In cases where application servers have similar specifications, an application server may be overloaded due to longer lived connections; this algorithm takes the active connection load into consideration.

**Weighted Least Connection** builds on the Least Connection load balancing algorithm to account for differing application server characteristics. The administrator assigns a weight to each application server based on criteria of their choosing to demonstrate the application servers traffic-handling capability. The LoadMaster is making the load balancing criteria based on active connections and application server weighting.

**Resource Based (Adaptive)** is a load balancing algorithm requires an agent to be installed on the application server that reports on its current load to the load balancer. The installed agent monitors the application servers availability status and resources. The load balancer queries the output from the agent to aid in load balancing decisions.

**SDN Adaptive** is a load balancing algorithm that combines knowledge from Layers 2, 3, 4 and 7 and input from an SDN Controller to make more optimized traffic distribution decisions. This allows information about the status of the servers, the status of the applications running on them, the health of the network infrastructure, and the level of congestion on the network to all play a part in the load balancing decision making.

**Fixed Weighting** is a load balancing algorithm where the administrator assigns a weight to each application server based on criteria of their choosing to demonstrate the application servers traffic-handling capability. The application server with the highest weigh will receive all of the traffic. If the application server with the highest weight fails, all traffic will be directed to the next highest weight application server.

**Weighted Response Time** is a load balancing algorithm where the response times of the application servers determines which application server receives the next request. The application server response time to a health check is used to calculate the application server weights. The application server that is responding the fastest receives the next request.

**Source IP hash** load balancing algorithm that combines source and destination IP addresses of the client and server to generate a unique hash key. The key is used to allocate the client to a particular server. As the key can be regenerated if the session is broken, the client request is directed to the same server it was using previously. This is useful if it’s important that a client should connect to a session that is still active after a disconnection.

**URL Hash** is a load balancing algorithm to distribute writes evenly across multiple sites and sends all reads to the site owning the object.