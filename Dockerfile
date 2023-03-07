FROM  maven:3.8.6-jdk-8 As build 
RUN   apt update && apt install git -y && \
      git clone https://github.com/wakaleo/game-of-life.git && \
      cd /game-of-life && mvn package 
