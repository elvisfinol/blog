+++
author = "Elvis Finol"
date = 2021-09-04T22:00:00Z
draft = true
tags = []
title = "DevOps Concepts"

+++
**What is Build Automation?**

* **Build automation**: automation of the process of preparing code for deployment to a live environment
* Depending on what languages are used, code needs to be compiled, linted, minified, transformed, unit tested, etc.
* Build automation means taking these steps and doing them in a consistent, automated way using a script or tool
* The tools of build automation often differ depending on what programming languages and frameworks are used, but they have one thing in common: **automation**! 

**What does build automation look like?**

* Usually, build automation looks like running a command-line tool that builds code using configuration files and/or scripts that are treated as part of the source code
* Build automation is independent of an IDE
* Even if you can build within the IDE, it should be able to work the same way outside the IDE
* As much as possible, build automation should be agnostic of the configuration of the machine that it is build on
* Your code should be able to build on someone else's machine the same way it builds on yours

Why do build automation?

* **Fast** - Automation handle tasks that would otherwise need to be done manually 
* **Consistency** - The build happens the same way every time, removing problems and confusion that happen with manual builds
* **Repeatable** - The build can be done multiple times with the same results. Any version of the code can always be transformed into deployable code in a consistent way
* **Portable** - The build can be done the same way on any machine. Anyone on the team can be build on their machine, as well as on a shared build server. Building code doesn't depend on specific people or machines
* **Reliable** - There will be fewer problems caused by bad builds