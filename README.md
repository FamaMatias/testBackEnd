# testBackEnd


## <u> Automation with Karate </u>


:pushpin: Automation was created with selenium Web driver


### Table of Contents
1. [What I am going to do?](#general-info)
2. [Tools](#tools)
3. [Execution](#execution)
4. [How to see reports?](#reports)


<a name="general-info"></a>
1. What I am going to do? :mag_right:

***

#### _In this repository we will be automated 4 scenarios:_
 <ul>
<li>Article
<li>tag
<li>test
<li>userAndAutenhication
</ul>

#### _In this work i used:_
* gherkin lenguage to make more understandable all scenarios
* Implement BDD (Behavior Driven Development)

```bash
src 
 |--test
 |    |--java
 |         |--karate     
 |               |--conduitApi
 |               |       |-- article
 |               |       |         . Article
 |               |       |
 |               |       |-- tag
 |               |       |        . Tag
 |               |       |
 |               |       |-- test
 |               |       |        . Test
 |               |       |
 |               |       |-- userAndAuthentication
 |               |                . UserAndAuthentication
 |               |
 |               |-- .AllFeatureTest 
 |--resources
     |--karate.conduitApi
     |    |--com.speedup.qa
     |             |-- article
     |             |        . article.feature
     |             |        . requestArticle.json
     |             |        . responseArticle.json
     |             |-- tag
     |             |        . tag.feature
     |             |        . responseArticle.json
     |             |
     |             |-- test
     |             |        . test.feature
     |             |        . requestArticle.json
     |             |        . responseArticle.json
     |             |        . responseTag.feature        
     |             |        . requestCreateUser.json
     |             |        . responseCreateUSer.json
     |             |
     |             |-- userAndAuthentication
     |                      . createUser.feature
     |                      . requestCreateUser.json
     |                      . responseCreateUSer.json
     |          
     |-- .karate-config.js
     |
     |-- .karate-properties.json
     
```
***
<a name="tools"></a>
2. Tools :briefcase:

* [Intellij IDEA](https://www.jetbrains.com/es-es/idea/)
* [POM]()


```bash
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>petStoreKarate</artifactId>
    <version>1.0-SNAPSHOT</version>


    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <java.version>1.8</java.version>
        <maven.compiler.version>3.6.0</maven.compiler.version>
        <karate.version>0.9.6</karate.version>
    </properties>

    <dependencies>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-apache</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>net.masterthought</groupId>
            <artifactId>cucumber-reporting</artifactId>
            <version>3.8.0</version>
            <scope>test</scope>
        </dependency>
    </dependencies>
    <build>
        <testResources>
            <testResource>
                <directory>src/test/resources</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>
                <configuration>
                    <encoding>UTF-8</encoding>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                    <compilerArgument>-Werror</compilerArgument>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>2.22.2</version>
                <configuration>
                    <systemProperties>
                        <karate.options>--tags ~@ignore</karate.options>
                    </systemProperties>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```
#### Lenguague

* [Java](https://www.java.com/en/): Version 1.8_333

```bash
OS : Windos 10
```
***
<a name="execution"></a>
3. Execution :keyboard:

In compliance with the SOLID principles, we must carry out the execution according to the functionality that we want to see:

| Runner (Java Class)  | Feature                      |
|----------------------|------------------------------|
| Article              | article.feature              |
| Tag                  | tag.feature                  |
| Test                 | test.feature                 |
| UserAndAutenhication | userAndAutenhication.feature |
***
<a name="reports"></a>
4. How to see reports? :computer:

To see the report we must run the diferent runners to see the reports

