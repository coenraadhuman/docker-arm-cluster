docker service create \
--name "mqtt-broker" \
--publish 1883:1883 \
--publish 9001:9001 \
--replicas=1 \
--mount type=bind,src=/mnt/docker/mosquitto.conf,dst=/mosquitto/config/mosquitto.conf \
--mount type=bind,src=/mnt/docker/mosquitto_data,dst=/mosquitto/data \
--mount type=bind,src=/mnt/docker/mosquitto_log,dst=/mosquitto/log \
eclipse-mosquitto
