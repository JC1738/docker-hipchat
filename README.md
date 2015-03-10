# docker-hipchat
Send a hipchat message via v1 api and docker

docker run --env token="AddToken" --env message="this is a test from docker" --env room_id="AddRoomID" --env sender="UserName" --env color="green" jcastillo/docker-hipchat:v1
