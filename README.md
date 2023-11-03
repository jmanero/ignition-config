John's CoreOS Ignition Configurations
=====================================

[Butane](https://coreos.github.io/butane/config-fcos-v1_5/) and generated [ignition](https://coreos.github.io/ignition/) configurations.

> [!NOTE]  
> These configurations disable teh default coreos user and afterburn ssh-key delivery and provision a user for me with my current set of personal SSH keys. Unless you're me, you probably don't want to point your provisioning at these confiogurations without forking this repo and modifying accordingly.

## Building

Compile ignition JSON from butane YAML:

```
% make
```

## Usage

```
coreos-installer install --ignition-url https://jmanero.github.io/ignition-config/default.ign.json /dev/SOMEWHERE
```
