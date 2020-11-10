Build customization tomcat, we need to download jdk-8u271-linux-x64.tar.gz and apache-tomcat-9.0.39.tar.gz
Create the directory /mydocker, and put the Dockfile and JDK/Apache-tomat.tar.gz into /mydocker
And then use the command "docker build -f /mydocker/Dockerfile -t tomcat9 ." to build the new image
Note: If you named Dockerfile, so you can use "docker build -t tomcat9 . ", because docker will use the Dockerfile automatically. No need to point out the abosulotely path.
you can use the following command to run a container.
docker run -d -p 9080:8080 --name mytomcat9 -v /mydocker/tomcat9/test:/usr/local/apache-tomcat-9.0.39/webapps/test -v /mydocker/tomcat9/logs:/usr/local/apache-tomcat-9.0.39/logs --privileged=true tomcat9
