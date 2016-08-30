./docker_gui_prep.sh &
docker run -ti -e DISPLAY=192.168.65.1:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:/home/ baishen/vm:2.0
