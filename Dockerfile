FROM  maven:3.8.6-jdk-8 As build 
RUN   apt update && apt install git -y && \
      git clone https://github.com/wakaleo/game-of-life.git && \
      cd /game-of-life && mvn package 
FROM tomcat:9.0
COPY --from=build /game-of-life/gameoflife-web/target/gameoflife.war  /game-of-life/gameoflife-web/src/main/webapp
EXPOSE 80
CMD ["catalina.sh" "run"]