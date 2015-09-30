FROM wnameless/oracle-xe-11g

RUN apt-get -y install nano telnet curl unzip openjdk-7-jdk; \
  curl -LO https://github.com/liquibase/liquibase/releases/download/liquibase-parent-3.4.1/liquibase-3.4.1-bin.zip; \
  unzip liquibase-3.4.1-bin.zip
ENV ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
ENV PATH $ORACLE_HOME/bin:/liquibase-3.4.1-bin:$PATH
CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
