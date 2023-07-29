Ignition Configuration
======================

[Butane](https://coreos.github.io/butane/config-fcos-v1_5/) and generated [ignition](https://coreos.github.io/ignition/) configurations for my home servers.

## Building

```
% make all
```

Compile all ignition from butane YAML and update iPXE variables with the latest Fedora CoreOS versions in `next` and `stable` channels

## Usage

Run `ghcr.io/jmanero/netboot:latest` and configure a DHCP next-server option to point PXE clients at it:

```
docker run -it --rm --publish 69:69/udp ghcr.io/jmanero/netboot:latest
```

> [!NOTE]  
> Some Docker desktop managers can not publish UDP ports to the host operating system. This seems to be the case for Colima using macOS Virtualization.Framework as of July 2023
