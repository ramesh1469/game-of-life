FROM  tomcat:8-jdk8
RUN   apt update && apt install git -y && \
      apt install maven -y &&\
      git clone https://github.com/wakaleo/game-of-life.git && \
      cd game-of-life && mvn package && cp gameoflife-web/target/gameoflife.war   /usr/local/tomcat/webapps/gameoflife.war
CMD ["catalina.sh", "run"]oflife.war 
EXPOSE 8080
CMD ["catalina.sh" "run"]
