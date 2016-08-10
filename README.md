# lita-mixlib

[![Build Status](https://travis-ci.org/cheeseplus/lita-mixlib.png?branch=master)](https://travis-ci.org/cheeseplus/lita-mixlib)

A Lita Handler for getting Chef product build information via mixlib-install

## Installation

Add lita-mixlib to your Lita instance's Gemfile:

``` ruby
gem "lita-mixlib"
```

## Configuration

No config at this time.

## Usage

```
latest <product> <channel> [<platform> <version> <arch>] - Displays latest version of product
```

#### Defaults
platform:  'ubuntu'
version: '14.04'
arch: 'x86_64'


channel defaults to 'stable'
```
latest chef
> chef/stable: 12.12.15
> URL:
```

```
latest chef current
> chef/current: 12.13.32
> URL: https://packages.chef.io/current/ubuntu/14.04/chef_12.13.32-1_amd64.deb
```

If platform is specified, version is required.
```
latest delivery stable centos 7

> *delivery/stable:* 0.5.93
> *URL:* https://packages.chef.io/stable/el/7/delivery-0.5.93-1.el7.x86_64.rpm
```

Fully qualified
```
latest chef current centos 6 i386

> *delivery/current:* 0.5.93
> *URL:* https://packages.chef.io/current/el/6/chef-12.13.32-1.el6.i386.rpm
```
