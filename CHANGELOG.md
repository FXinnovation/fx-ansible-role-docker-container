# CHANGELOG

## 1.3.1

* fix: use pip3 to install ansible
* chore: increase size of kitchen RHEL instance (15Gb)
* chore: bump kitchen ansible to `2.9.17`
* chore: bump pre-commit hooks

## 1.3.0

* feat: add option `dcontainer_no_log` (default: false) to hide output on the container's start.

## 1.2.0

* feat: add options to manage `purge_networks` and `network_mode`
* maintenance: bump ansible role docker 0.0.4:
  * fix: docker repo bugged for rhel

## 1.1.2

* fix: var `networks.ipam_options` is now optional

## 1.1.1

* fix: RHEL 7.8, match new repo name
* fix: kitchen
* maintenance: bump role docker 0.0.3:
  * fix: RHEL 7.8, match new repo name

## 1.1.0

* feat: Add `command`, `capabilities` and `capabilities_drop` options
* chore: remove specifics subnet id and ssh key

## 1.0.3

* Requirements: use public HTTPS instead of SSH

## 1.0.2

* Fix RHEL extras repo

## 1.0.1

* Add pull support to docker\_container

## 1.0.0

* The parameter network is now a list (to permit more configuration)
* Add links support to docker\_container
* Add entrypoint support to docker\_container
* Use default(omit) on some parameters

## 0.1.2

* Fix RHEL installation (extra repo)
* Bump role docker 0.0.2
