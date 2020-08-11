<a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/1-assemble-prototype.md">Assemble Prototype</a> < <a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/2-install-os.md">Install Operating Systems</a> > <a href="https://github.com/coenraadhuman/docker-arm-cluster/blob/master/documentation/3-network-setup.md">Network Setup</a>

# Install Operating Systems
In this phase I will show you how I compiled my Armbian based Ubuntu Focal distros for my single board computers.

_If you are using Raspberry Pi boards I suggest you skip this phase and rather use their <a href="https://www.raspberrypi.org/downloads/raspberry-pi-os/">Raspberry Pi OS Lite distro._

## Steps 

<table>
  <tr>
    <th>Step</th>
    <th>Description</th>
    <th>Applicable External Source</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Clone Armbian build tools with git on a Ubuntu 20.04 machine.</td>
    <th><a href="https://github.com/armbian/build">Github page</a></th>
  </tr>
  <tr>
    <td>2</td>
    <td>Run the `./build/compile.sh` command, this execute the compile script within the cloned directory.</td>
    <th><img src="../images/armbian-build-tools.gif" alt="Armbian logo" width="100%"></th>
  </tr>
  <tr>
    <td>3</td>
    <td>Follow the steps in the script.<br><br><i>Ensure you select the following options: full os image for flashing, do not change kernel configuration, current kernel, focal for the release and standard image with console interface.</i></td>
    <th></th>
  </tr>
  <tr>
    <td>4</td>
    <td>Wait for the build to finish. Take note that the first build can be take longer than 40 minutes, due to dependencies download.</td>
    <th></th>
  </tr>
  <tr>
    <td>5</td>
    <td>Burn the image (can be found in the output directory withing cloned build directory) to a SD card using Etcher.</td>
    <td><a href="https://www.balena.io/etcher/">balenaEtcher</a></td>
  </tr>
  <tr>
    <td>6</td>
    <td>Start single board computer with 'burned' SD card and SSH to it using root (password = 1234). Following the setup instruction for Armbian.</td>
    <td></td>
  </tr>
</table>
