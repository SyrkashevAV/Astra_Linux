docker run -it --net=host -e DISPLAY -v /tmp/.X11-unix -v volume:/opt/inst firefox ./start.sh

docker run -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix -v volume:/opt/inst firefox ./start.sh


docker container run -it --net=host --env="DISPLAY" -v /tmp/.X11-unix -v volume:/opt/inst firefox

docker container run --rm -it --name firefox1 --cpus 4 --net host -e DISPLAY=$DISPLAY  -v /tmp/.X11-unix -v volume:/opt/inst firefox

docker container run --rm -it --name firefox --cpus 4 --net host -e DISPLAY=$DISPLAY  -v /tmp/.X11-unix -v volume:/opt/inst -p 8087:8087 firefox

docker container run --rm -it --name kbrn --net host --cpus 4 -e DISPLAY=$DISPLAY  -v /tmp/.X11-unix -v volume:/opt/inst -p 8087:8087 kbrn

docker container run --rm -it --name kbrn --net host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix -v volume:/tmp kbrn

rm -Rf ~/.config/.mono

docker container run --rm -it --name kbrn --user kbradm --net host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix -v volume:/tmp -v cfg:/opt/oev/Cfg -v exg:/opt/oev/Exg -v log:/opt/oev/Log -v Stg:/opt/oev/Stg kbrn


docker container run --rm -it --name kbrn --user kbradm --net host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix -v volume:/tmp --mount type=bind,source=/var/lib/docker/volumes/cfg/_data,target=/opt/oev/Cfg --mount type=bind,source=/var/lib/docker/volumes/exg/_data,target=/opt/oev/Exg --mount type=bind,source=/var/lib/docker/volumes/log/_data,target=/opt/oev/Log --mount type=bind,source=/var/lib/docker/volumes/stg/_data,target=/opt/oev/Stg kbrn

