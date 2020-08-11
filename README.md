# Docker Arm Cluster
A cluster made with Orange Pi, FriendlyElec single board computers and Docker Swarm.

## Goal
To make a ARM cluster using cheap Pis and Docker to run local services such as Pihole, MQTT Brokers, Grafana, others...

## Implementation Phases
<table>
  <tr>
    <th>Phase</th>
    <th>Description</th>
    <th>Done</th>
    <th>Documentation Link</th>
    <th>Documentation Completed</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Assemble prototype.</td>
    <td>✔</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/1-assemble-prototype.md">Documentation</a></th>
    <td>❌</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Install OSes.</td>
    <td>✔</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/2-install-os.md">Documentation</a></th>
    <td>✔</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Network setup.</td>
    <td>✔</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/3-network-setup.md">Documentation</a></th>
    <td>❌</td>
  </tr>
  <tr>
    <td>4</td>
    <td>GlusterFS setup.</td>
    <td>✔</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/4-gluster-setup.md">Documentation</a></th>
    <td>❌</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Docker setup.</td>
    <td>✔</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/5-docker-setup.md">Documentation</a></th>
    <td>❌</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Design case for with a custom PSU.</td>
    <td>❌</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/6-design-custom-case.md">Documentation</a></th>
    <td>❌</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Assemble custom case and PSU.</td>
    <td>❌</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/7-assemble-custom-case.md">Documentation</a></th>
    <td>❌</td>
  </tr>
  <tr>
    <td>8</td>
    <td>Transfer assembled prototype over to custom case.</td>
    <td>❌</td>
    <th><a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/8-transfer-prototype-to-custom-case.md">Documentation</a></th>
    <td>❌</td>
  </tr>
</table>

## My Hardware
- 8 Port 100Mbps switch.
- 4x LAN cables.
- 1x Male to Female LAN cable.
- 1x [NanoPi Neo](https://www.friendlyarm.com/index.php?route=product/product&product_id=132).
- 1x [Orange Pi 2](http://www.orangepi.org/orangepi2/).
- 1x [Orange Pi +2e](http://www.orangepi.org/orangepiplus2e/).
- 1x [Orange Pi One](http://www.orangepi.org/orangepione/)
- Required PSU.
- Required TF cards.
- 4x 32GB USB 3.0 flash drives for persistent storage.

_The above is subjectable to change due to cluster is still in early stages._

### SBC Comparison
<table>
  <tr>
    <th>SBC Name</th>
    <th>Processor</th>
    <th>Architecture</th>
    <th>Operating System</th>
    <th>RAM</th>
    <th>Storage</th>
    <th>Network</th>
    <th>Docker Manager</th>
    <th>Docker Worker</th>
  </tr>
  <tr>
    <td>NanoPi Neo</td>
    <td>Allwinner H3, Quad-core Cortex A7 1.2 GHz</td>
    <td>ARM32</td>
    <td>Armbian Buster</td>
    <td>512MB DDR3 SDRAM</td>
    <td>TF Card</td>
    <td>100Mbps Ethernet</td>
    <td>No</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td>Orange Pi 2</td>
    <td>Allwinner H3, Quad-core Cortex A7 1.6 GHz</td>
    <td>ARM32</td>
    <td>Armbian Buster</td>
    <td>1024MB DDR3 SDRAM</td>
    <td>TF Card</td>
    <td>100Mbps Ethernet</td>
    <td>No</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td>Orange Pi +2e</td>
    <td>Allwinner H3, Quad-core Cortex A7 1.6 GHz</td>
    <td>ARM32</td>
    <td>Armbian Buster</td>
    <td>2048MB DDR3 SDRAM</td>
    <td>TF Card, eMMC</td>
    <td>1000Mbps Ethernet</td>
    <td>Yes</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td>Orange Pi One</td>
    <td>Allwinner H3, Quad-core Cortex A7 1.2 GHz</td>
    <td>ARM32</td>
    <td>Armbian Buster</td>
    <td>512MB DDR3 SDRAM</td>
    <td>TF Card</td>
    <td>100Mbps Ethernet</td>
    <td>No</td>
    <td>Yes</td>
  </tr>
</table>
