gh-issues-gantt verification
============================

[gh-issues-gantt](https://github.com/neyric/gh-issues-gantt) verification.

Requirements
------------

+ Vagrant (>= 1.6.5)(http://www.vagrantup.com/downloads.html)
+ Platforms
  + Virtualbox (>= 4.3.20)(https://www.virtualbox.org/wiki/Downloads)
  + VMware Workstaion (>= 10)(https://www.vmware.com/go/downloadworkstation)
+ Vagrant VMware plugin if you're using vmware (http://www.vagrantup.com/vmware)

Getting Started
---------------

Clone a repository.

```
$ git clone https://github.com/hansode/gh-issues-gantt-verification.git
$ cd gh-issues-gantt-verification
```

Create a VM.

```
$ make up
```

Connect to the VM.

```
$ vagrant ssh
```

Configure gh-issues-gantt.

```
$ vi config.js
$ vi public/config.js
```

References
----------

+ ...

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
