docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID kritipatwa15/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID kritipatwa15/$JOB_NAME:latest

docker push kritipatwa15/$JOB_NAME:$BUILD_ID

docker push kritipatwa15/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID kritipatwa15/$JOB_NAME:$BUILD_ID kritipatwa15/$JOB_NAME:latest
