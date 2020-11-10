Build customization tomcat, we need to download jdk-8u271-linux-x64.tar.gz and apache-tomcat-9.0.39.tar.gz
Create the directory /mydocker, and put the Dockfile and JDK/Apache-tomat.tar.gz into /mydocker
And then use the command "docker build -f /mydocker/Dockerfile -t tomcat9 ." to build the new image
Note: If you named Dockerfile, so you can use "docker build -t tomcat9 . ", because docker will use the Dockerfile automatically. No need to point out the abosulotely path.
