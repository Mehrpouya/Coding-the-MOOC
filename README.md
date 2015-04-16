# Coding the MOOC


Coding the Mooc consists of three sub projects **[MOOC Twitterbot](##Links "MOOC Twitterbot")** , **[MOOC Twitter Sniffer](##Links
 "Twitter Sniffer")** and **[MOOC Twitter GUI](##Links
  "Twitter GUI")**

**[Jump to Installation!](##Installation)**

##[MOOC Twitterbot](##Links "MOOC Twitterbot"):
The task of this submodule is to responds to user tweets.
The twitter bot is developed based on Agent oriented programming. The Teacher agent developed using Java Agent Development Framework(JADE).

Currently the Agent system has only one agent "TeacherAgent" which checks the tweets database every 10 seconds for new entries. If the agent finds any new entries in the MySQL database then it will compare them against the **[knowledge base](###Knowledge Base)**. If any of the new entries matched any of the rules then the agent will send a **[relavant tweet](####Relavant Tweet)** to the twitter user.


###Jade
JADE is simplified multi-agent system for developing Agen-oriented Programs. For more information on Agent-Oriented Programming start from its **[Wikipedia page](http://en.wikipedia.org/wiki/Agent-oriented_programming)**. This means this system can be distributed across machines. JADE allows for Agents to be moved from one machine to another, or to add new agents to the existing infrastructure.

The purpose for using JADE was to support further development of this small project.

###Knowledge Base:
The knowledge base designed based on the needs of [E-learning and Digital Cultures](https://www.coursera.org/course/edc) team based at University of Edinburgh.
Each rule has 7 attributes:
- Name
- Author
- Category
- Conditions
  - Tweet Contains
  - Tweet also Contains
  - Tweet Not Contains
- Stack of tweet responses for this rule

All the rules are being stored in MySQL table "tweetRules". For editing rules and Making new ones you can either add them to the database directly or use the [MOOC Twitter GUI](##MOOC Twitter GUI:)

## [MOOC Twitter GUI:](##Links to submodules:)

####Conditions and defining rules:
Rules can be edited and defined using the [Bot GUI](##Links to submodules "MOOC Twitter GUI")
![GUI Screengrab](https://github.com/Mehrpouya/Coding-the-MOOC/blob/master/img/gui-screeenshot.png)

##Installation:
First of all, you can use any of the submoduled independantly, for example if you want to archive all tweets with a particular #tag then you can just got straight to [MOOC Twitter Sniffer](##Links to submodules:), fork that project or just **[download it](https://github.com/Mehrpouya/MOOC-Twitterbot-Sniffer/archive/master.zip).**

If you want to install the whole system then continue reading:


###Requirements:
To use the Twitter bot you need to have the following installed on your server:
- Shell Access to  your hosting Server (i.e. you can run scripts and Java programs from Terminal/Command prompt)
- [MySQL installed](https://dev.mysql.com/doc/refman/5.5/en/installing.html)
- [PhP installed](http://php.net/manual/en/install.php)
- [Java installed](http://www.oracle.com/technetwork/java/javase/downloads/index.html)



##Links to submodules:
- [MOOC Twitterbot](https://github.com/Mehrpouya/MOOC-Twitterbot "MOOC Twitterbot")

- [MOOC Twitter Sniffer](https://github.com/Mehrpouya/MOOC-Twitterbot-Sniffer "MOOC Twitterbot")
- [MOOC Twitter GUI](https://github.com/Mehrpouya/MOOC-Twitterbot-GUI "MOOC Twitterbot")


##TODO:

- [ ]Set security/access
- [ ]search set up
- [ ]self registration (?)
- [ ]ability for teacherbot to be used by multiple teams
- [ ]setting up of teacherbot on IS server
