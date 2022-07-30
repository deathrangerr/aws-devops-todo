version: 0.2

phases:
  pre_build:
    commands:
      - echo Logging in to DockerHub...
      - $(docker login -u deathranger -p vleuno0134)
  build:
    commands:
      - echo Build started on `date`
      - echo Building the Docker image...          
      - docker build -t deathranger/todo:latest .
      - docker tag deathranger/todo:latest
  post_build:
    commands:
      - echo Build completed on `date`
      - echo Pushing the Docker image...
      - docker push deathranger/todo:latest
      - echo Writing image definitions file...
