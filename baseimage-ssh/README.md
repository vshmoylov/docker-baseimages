# baseimage-ssh
This is modification of [phusion/baseimage](https://github.com/phusion/baseimage-docker) with ssh server enabled by default.
This image copies your public key `key.pub` to image's root authorized keys.
Beneath, it disables and removes original `baseimage` insecure key and related script.

Modifications made to `phusion/baseimage`:
* SSH server is being run during start-up
* removed `baseimage`'s pre-defined _insecure_ ssh key
* adds your `key.pub` public key as authorized key for root