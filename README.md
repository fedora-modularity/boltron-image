Boltron Instructions
====================

First, please download the boltron in the /prototype/boltron/download
section. A container image is recommended if you just want to test the
user experience - as it is the easiest to run.

    $ docker run --rm -it registry.fedoraproject.org/f26/boltron /bin/bash

Now you are ready to try Boltron!

Managing modules with DNF
-------------------------

You can find very similar guide on the [Walkthrough and UX
Feedback](https://goo.gl/forms/WSt2tQJHWXmhMotq2) form - and give us
feedback on the go.

### Listing modules

List all available modules:

    $ dnf module list

List all installed modules:

    $ dnf module list --installed

### Installing modules

Modules are identified by name-stream-version. Each module might have
one or more install profiles - pre-defined sets of packages to be
installed.

Modules can be installed by one of the following commands.

    $ dnf install <module>

    $ dnf install <module>-<stream>
    $ dnf install <module>-<stream>/<profile>

    $ dnf install <module>-<stream>-<version>
    $ dnf install <module>-<stream>-<version>/<profile>

Specific examples:

    $ dnf install nginx
    $ dnf install nginx-f26

### Updating the system

The system can be updated the same way as a traditional Fedora. The
modules will always follow their streams. That means that if you have
nodejs 6 (nodejs-f26) installed, it will not get upgraded to nodejs 8
(nodejs-8) even when it is available.

    $ dnf update

### Changing streams

If you want to change a stream of an installed module, run the same
command as if you were installing it, specifying the stream you want to
change to.

    $ dnf install nodejs-f26
    $ dnf install nodejs-8

### How DNF keeps track what modules are installed?

DNF creates a .module file for each installed or enabled module.

    $ ls /etc/dnf/modules.d/
    $ cat /etc/dnf/modules.d/nodejs.module
