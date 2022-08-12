# About

This package allows to run DDoS penetration testing tool on machine as a systemd service.
Systemd will care about the process restarts. [Bootstrap script](pacakge/usr/lib/puncher/bootstrap.sh) will care about updates of the tool itself.


# Getting started

## Install & start service
```sh
systemctl enable --now dzida.service
```

But be careful. When you start service in the main namespace without the proxy or VPN, your IP will be exposed.

## Install & start inside a Linux network namespace 
Linux Namespaces are awesome and allows to isolate/sandbox processes. This way is usefull if you want to isolate network

```sh
systemctl enable --now dzida@protected.service
```

But you need to setup a network in this namepsace, for instance, set up openvpn inside it. Check out [openvpn-netns](https://github.com/pekman/openvpn-netns) for example.


# Development

Build steps are described at [build.yaml](.github/workflows/build.yaml).