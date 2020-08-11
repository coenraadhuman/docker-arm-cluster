docker service create \
--name "portainer" \
--publish 9000:9000 \
--publish 8000:8000 \
--replicas=1 \
--constraint 'node.role == manager' \
--restart-condition "on-failure" \
--mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
--mount type=volume,src=portainer_data,dst=/data \
portainer/portainer
