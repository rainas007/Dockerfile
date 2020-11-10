FROM centos
MAINTAINER mibai<rainas007@163.com>
COPY c.txt /usr/local/cincontainer.txt
#将java和tomcat添加到容器中
ADD jdk-8u271-linux-x64.tar.gz /usr/local
ADD apache-tomcat-9.0.39.tar.gz /usr/local
#安装vim
RUN yum -y install vim
#设置工作访问目录
ENV MYPATH /usr/local
WORKDIR $MYPATH
#配置java和tomcat的环境变量
ENV JAVA_HOME /usr/local/jdk1.8.0_271
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV CATALINA_HOME /usr/local/apache-tomcat-9.0.39
ENV CATALINA_BASE /usr/local/apache-tomcat-9.0.39
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/lib:$CATALINA_HOME/bin
#容器运行的端口
EXPOSE 8080
#启动时运行TOMCAT
CMD $CATALINA_HOME/bin/startup.sh && tail -F $CATALINA_HOME/logs/catalina.out
