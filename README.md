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

## Intro to AspectJ

AOP is a programming paradigm that aims to increase modularity by allowing the separation of cross-cutting concerns. It does so by adding additional behavior to existing code without modification of the code itself. Instead, we declare separately which code is to modify.

[AspectJ](https://eclipse.org/aspectj/) implements both concerns and the weaving of crosscutting concerns using extensions of Java programming language.

### Maven Dependencies

AspectJ offers different libraries depending on its usage. We can find Maven dependencies under group [org.aspectj](https://search.maven.org/classic/#search|ga|1|g%3A"org.aspectj") in the Maven Central repository.

In this article, we focus on dependencies needed to create aspects and Weaver using the compile-time, post-compile, and load-time Weavers.

###  AspectJ Runtime

When running an AspectJ program, the classpath should contain the classes and aspects along with the AspectJ runtime library *aspectjrt.jar**:*

```
<dependency>
    <groupId>org.aspectj</groupId>
    <artifactId>aspectjrt</artifactId>
    <version>1.8.9</version>
</dependency>
```

### AspectJWeaver

Besides the AspectJ runtime dependency, we will also need to include the *aspectjweaver.jar* to introduce advice to Java class at load time:

```
<dependency>
    <groupId>org.aspectj</groupId>
    <artifactId>aspectjweaver</artifactId>
    <version>1.8.9</version>
</dependency>
```

## **Aspect Creation**

AspectJ provides an implementation of AOP and has **three core concepts:**

- Join Point
- Pointcut
- Advice

We'll demonstrate these concepts by creating a simple program to validate a user account balance.

First, let's create an *Account* class with a given balance and a method to withdraw:

```
public class Account {
    int balance = 20;

    public boolean withdraw(int amount) {
        if (balance < amount) {
            return false;
        } 
        balance = balance - amount;
        return true;
    }
}
```



## How to Implement AOP with Spring

Ways to implement AOP:

2. Spring XML Configuration Style (Schema-based AOP Support)

3. By AspectJ annotation style (@AspectJ Support)

   
   
   If you prefer an XML-based format, Spring also offers support for defining aspects using the `aop` namespace tags. The exact same pointcut expressions and advice kinds as when using the @AspectJ style are supported. To use the aop namespace tags described in this section, you need to import the `spring-aop` schema. Within your Spring configurations, all aspect and advisor elements must be placed within an `<aop:config>` element (you can have more than one `<aop:config>` element in an application context configuration). An `<aop:config>` element can contain pointcut, advisor, and aspect elements (note that these must be declared in that order).
   
   #### Declaring an Aspect
   
   When you use the schema support, an aspect is a regular Java object defined as a bean in your Spring application context. The state and behavior are captured in the fields and methods of the object, and the pointcut and advice information are captured in the XML.
   
   You can declare an aspect by using the `<aop:aspect>` element, and reference the backing bean by using the `ref` attribute, as the following example shows:
   
   ```
   <aop:config>
       <aop:aspect id="myAspect" ref="aBean">
           ...
       </aop:aspect>
   </aop:config>
   
   <bean id="aBean" class="...">
       ...
   </bean>
   ```
   
   #### Declaring a Pointcut
   
   You can declare a named pointcut inside an `<aop:config>` element, letting the pointcut definition be shared across several aspects and advisors.
   
   A pointcut that represents the execution of any business service in the service layer can be defined as follows:
   
   ```
   <aop:config>
   
       <aop:pointcut id="businessService"
           expression="execution(* com.xyz.myapp.service.*.*(..))"/>
   
   </aop:config>
   ```
   
   Then declaring a pointcut inside an aspect is very similar to declaring a top-level pointcut, as the following example shows:
   
   ```
   <aop:config>
   
       <aop:aspect id="myAspect" ref="aBean">
   
           <aop:pointcut id="businessService"
               expression="execution(* com.xyz.myapp.service.*.*(..))"/>
   
           ...
       </aop:aspect>
   
   </aop:config>
   ```
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   ![Image title](https://dz2cdn1.dzone.com/storage/temp/10659870-ways.png)
   
   Currently, **AspectJ libraries with Spring framework** are dominant in the market, therefore let’s have an understanding of how Aspect-oriented programming works with Spring.
   
   **How Aspect-Oriented Programming works with Spring:**
   One may think that invoking a method will automatically implement cross-cutting concerns but that is not the case. Just invocation of the method does not invoke the advice(the job which is meant to be done). Spring uses **proxy based mechanism** i.e. it creates a proxy Object which will wrap around the original object and will take up the advice which is relevant to the method call. Proxy objects can be created either manually through proxy factory bean or through auto proxy configuration in the XML file and get destroyed when the execution completes. Proxy objects are used to enrich the Original behaviour of the real object.

https://www.baeldung.com/aspectj

