carbon-cloud
===================
## carbon-cloud project
****
#### Hi, I'm CarbonFace. Welcome to the carbon-cloud.
This project is the open source of my own website [carbonface.cn](https://www.carbonface.cn).<br>
## before you start

[comment]: <> (May I introduce the environment of the project first if you don't mind.<br>)

the structure of the project contains the basic parts below<br>
* ### carbon-cloud
It is functioning as a pom management which contains no codes but only dependencies through whole project 
* ### carbon-eureka
The Eureka module of the CarbonFace Cloud which is a register center discovered all other services.<br>
Any way it's a normal one which all you knows as a basic register center.
* ### carbon-gateway
I used spring gateway for services discover,dispatch and load balance.
* ### carbon-common
The carbon-common module is used for the module sharing which is introduced by multiple modules such as dto.ApiResult tools.HttpUtil etc.   
* ### carbon-security
The carbon-security module is the security controller module of the CarbonFace Cloud. Every service run in the
CarbonFace Cloud should import the carbon-security module to control the access authorization.
* ### carbon-user
The carbon-user is the user module which provide user service for other services and used a separate database
for isolation.<br>
In the carbon-user we only care about the user service.
* ### carbon-mail
As you can see I'm quite a leaner for programming, 
in the beginning I do not have any idea what I can do to build my own website.<br>
One day when I was studying how to send a confirmation email to users when they registered.<br>
I had a flash in my mind, why don't I build my own email server for my website?<br>
So be it, I started to learn how to build the email server which is relying on the Apache James project.<br>
Fortunately, every user in my website can get a `CarbonFace` email !<br>
`But I'm asking for your forgiveness that I can't guarantee it's stability`
* ### carbonface
The main business module of the CarbonFace Cloud.Which I haven't figured out what to do yet, I'm sorry.
## Features In carbon-cloud
* For the database,I used `mysql` along with `mybatis` for data operation.
* For the log I use the `log4j2` for the whole project as log function,<br>
and each module determined its own log4j config file which is used the `.yml` for configuration.
* The security module I used the integration of `spring security` and `jwt` along with the `redis` cache token store for service authority control.
* I configured all services together in a `spring cloud` project,
  using the `eureka` as the register center and the `spring gateway` for the routing dispatch and load balance.
* For the mail system I build my onw email server relying on the `Apache James`.
* Each service can configure with the `swagger-ui` index for development.
****
####

## To Be Continued
## ヽ(^_−)ﾉ
