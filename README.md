## What is AOP

AOP (Aspect-Oriented Programming) is a way of programming that helps increase modularity and avoid strong coupling of code by separating cross-cutting concerns. A cross-cutting concern is code logic, which is scattered throughout the application. It affects the entire application. Transaction management and logging are the best examples of cross-cutting concerns. 

## Why AOP is needed

Sometimes, we add code logic and it gets scattered and tangled across the application. Let's say that we want to add the code to check the performance of each method of services. Without AOP, we need to repeat some lines of code to each expected method. But using AOP, we can put the logic in one place and call it whenever it is necessary instead of duplicating and scattering the entire project.

## Dominant Frameworks in AOP

**AOP** includes programming methods and frameworks on which modularisation of code is supported and implemented. Let’s have a look at the three **dominant frameworks in AOP**.

![img](https://media.geeksforgeeks.org/wp-content/uploads/20190313105735/dominant-frameworks-in-AOP.jpg)

- **AspectJ:** It is an extension for Java programming created at **PARC research centre**. It uses Java like syntax and included IDE integrations for displaying crosscutting structure. It has its own compiler and weaver, on using it enables the use of full AspectJ language.
- **JBoss:** It is an open source Java application server developed by JBoss, used for Java development.
- **Spring:** It uses XML based configuration for implementing AOP, also it uses annotations which are interpreted by using a library supplied by AspectJ for parsing and matching.

## How to Implement AOP with Spring

Ways to implement AOP:

1. By Spring 1.2 - dtd-based style (old style)

2. Spring XML Configuration Style

3. By AspectJ annotation style 

   ![Image title](https://dz2cdn1.dzone.com/storage/temp/10659870-ways.png)