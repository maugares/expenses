# expenses

## Server

Step 1 - Run standard in pipeline

Step 2 - Run test in pipeline

Step 3 - Build a Docker Image

- Step 3.1 - Create a file at project root named Dockerfile
- Step 3.2 - Add instructions in Dockerfile
- Step 3.3 - Build dockerfile to create an image

  `docker build directoryOfDockerfile`  
  `docker build -t ImageName:Tag directoryOfDockerfile`

- Step 3.4 - Run image to create a container

  `docker run image`

- Step 3.5 - Let action build the image

Step 4 - Publish Docker Image (to Docker Hub)  

- Step 4.1 - login in a dockerhub account  
  
  `docker login`  

- Step 4.2 - tag your image to a unique tag (to be pushed)  

  `docker tag imageName uniqueTagForDockerHub`  

- Step 4.3 - push the image to dockerhub  

  `docker push maugares/expenses:tagname`

TODO: Step 5 - Set up Kubernetes Cluster (CLI)  
TODO: Step 6 - Deploy Docker Image on Kubernetes  
TODO: Step 7 - Create Test and Production environments

## Client

Step 1 - Add React  
  
    cd ~/src
    npx create-react-app client

TODO: Step 2 - Connect Client and server