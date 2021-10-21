# openvpn3-cli-wrapper

A wrapper for openvpn3 to make openvpn3 cli easier to use

There is no official openvpn GUI client on linux, `openvpn` and `openvpn3` are available but not that easy to use.

`openvpn3` has similar functionalities to GUI clients on Windows and Mac but still hard to use because users have to remember and type out the long commands.

I made a Gist Note of how to use `openvpn3` [here](https://gist.github.com/HuakunShen/b2b7169222c2c0658760777505e9eef4).

I am tired with `openvpn3`, and `openvpn` isn't as powerful, so I wrote a simple bash script as a wrapper of `openvpn3` client to make my life easier.

You can import, connect, disconnect ... with the simpliest commands.

## Installation

The installation script is [install.sh](./install.sh)

The source code and executable is [ovpn](./ovpn)

It can be easily installed to your `/usr/local/bin` with the following one-liner

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/HuakunShen/openvpn3-cli-wrapper/master/install.sh)"
```

## How to use?

### Import a configuration file

```bash
ovpn import new_york.ovpn
ovpn import new_york.ovpn newyork  # import the configuration file and rename it to newyork for easier acccess
```

### Rename a configuration

```bash
ovpn rename old_config_name new_config_name
```

### Remove a configuration

```bash
ovpn remove config_name
```

### Connect (Start a new session)

```bash
ovpn connect config_name
```

### Disconnect (kill a session or all sessions)

```bash
ovpn disconnect config_name
```

`openvpn3` supports multiple sessions, instead of disconnecting them one by one with their name, you can simply use

```bash
ovpn disconnect
```

to detect and disconnect all sessions on you computer.
