FROM tomcat:jdk8-openjdk-slim
LABEL "author"="MinhHN4"
LABEL "company"="FHS"
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY ROOT.war /usr/local/tomcat/webapps/
 
