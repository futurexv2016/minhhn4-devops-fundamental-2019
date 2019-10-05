# minhhn4-devops-fundamental-2019
⁃ Họ và tên: Hồ Nhật Minh
⁃ Account: MinhHN4
⁃ Đơn vị: FHS

#Dockerfile
FROM tomcat:jdk8-openjdk-slim
LABEL "author"="MinhHN4"
LABEL "company"="FHS"
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY /home/future/Downloads/ROOT.war /usr/local/tomcat/webapps/

#Network creation command:
docker network create --driver=bridge --subnet=10.10.20.0/24 bridge_network_subnet
#Container creation command:
docker run -d --name exam_devops --network=bridge_network_subnet -p 8081:8080 future2018/exam_devops:1.0
