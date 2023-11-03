John's CoreOS Ignition Configurations
=====================================

[Butane](https://coreos.github.io/butane/config-fcos-v1_5/) and generated [ignition](https://coreos.github.io/ignition/) configurations.

> [!NOTE]  
> These configurations remove the default coreos user, disable afterburn ssh-key delivery and provision a user for me with my current set of personal SSH keys. Unless you're me, you probably don't want to point your provisioning at these confiogurations without forking this repo and modifying accordingly.

## Building

Compile ignition JSON from butane YAML:

```
% make
```

## Usage

```
coreos-installer install --ignition-url https://jmanero.github.io/ignition-config/default.ign.json /dev/SOMEWHERE
```

| Configuration | Usage |
|---------------|-------|
|[Cloud Distributions](https://jmanero.github.io/ignition-config/cloud.ign.json) | Fedora CoreOS on EC2 nodes, Droplets, etc |
|[Default](https://jmanero.github.io/ignition-config/default.ign.json) | Base configuration extended for more specific metal platforms |
|[Raspbery Pis](https://jmanero.github.io/ignition-config/pi.ign.json) | Fedora Coreos on Raspberry Pi 4 and 5 boards |
|[Utility Nodes](https://jmanero.github.io/ignition-config/util.ign.json) | Fedora CoreOS on my miscelanious x86 hosts with a large disk at /dev/sdb |
