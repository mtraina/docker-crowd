from ariya/centos6-oracle-jre7

RUN yum install -y tar
RUN wget http://www.atlassian.com/software/crowd/downloads/binary/atlassian-crowd-2.7.2.tar.gz
RUN tar -zxvf atlassian-crowd-2.7.2.tar.gz
#RUN cd /atlassian-crowd-2.7.2/crowd-webapp/WEB-INF/classes
#RUN sed 's/^#\(crowd\.home=\/var.*\)/\1/' /atlassian-crowd-2.7.2/crowd-webapp/WEB-INF/classes/crowd-init.properties
RUN mkdir /opt/crowd-home
RUN echo "crowd.home = /opt/crowd-home" > /atlassian-crowd-2.7.2/crowd-webapp/WEB-INF/classes/crowd-init.properties
CMD ["/atlassian-crowd-2.7.2/apache-tomcat/bin/catalina.sh", "run"]
