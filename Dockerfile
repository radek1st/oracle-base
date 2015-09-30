FROM wnameless/oracle-xe-11g

RUN apt-get -y install nano telnet curl ; \
  curl -O https://github.com/liquibase/liquibase/releases/download/liquibase-parent-3.4.1/liquibase-3.4.1-bin.zip; \
  unzip liquibase-3.4.1-bin.zip; \
  curl -LO 'http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.rpm' -H 'Cookie: oraclelicense=accept-securebackup-cookie'; \
  rpm -i jdk-7u51-linux-x64.rpm
ENV ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
ENV PATH $ORACLE_HOME/bin:/liquibase-3.4.1-bin:$PATH
CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
