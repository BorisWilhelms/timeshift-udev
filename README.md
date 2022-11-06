# Auto Timeshift backup by udev

Simple setup to automatically run Timeshift backup via udev rules when the configured disk is attached (e.g. via USB).

## Prerequisites

- Timeshift
- udev (usually already present)

## Installation

- Git clone the repo
- Adjust the UUID (`ENV{ID_FS_UUID_ENC}`) in `src/zz-timeshift.rules` to the UUID of the target partition
  - Use `lsblk -f` to get the UUID of the partition
- Run `sudo make install`

## Uninstall

- Run `sudo make uninstall`