docker service create \
--name "home-assistant" \
--publish 8123:8123 \
--replicas=1 \
--mount type=bind,src=/mnt/docker/homeassistant_config,dst=/config \
--mount type=bind,src=/etc/localtime,dst=/etc/localtime:ro
homeassistant/armhf-homeassistant