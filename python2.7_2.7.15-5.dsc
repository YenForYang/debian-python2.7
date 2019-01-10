-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 1.0
Source: python2.7
Binary: python2.7, libpython2.7-stdlib, python2.7-minimal, libpython2.7-minimal, libpython2.7, python2.7-examples, python2.7-dev, libpython2.7-dev, libpython2.7-testsuite, idle-python2.7, python2.7-doc, python2.7-dbg, libpython2.7-dbg
Architecture: any all
Version: 2.7.15-5
Maintainer: Matthias Klose <doko@debian.org>
Standards-Version: 4.2.1
Vcs-Browser: https://salsa.debian.org/cpython-team/python2
Vcs-Bzr: https://salsa.debian.org/cpython-team/python2.git
Testsuite: autopkgtest
Testsuite-Triggers: build-essential, locales, python-gdbm, python-gdbm-dbg
Build-Depends: debhelper (>= 9), dpkg-dev (>= 1.17.11), quilt, autoconf, autotools-dev, lsb-release, sharutils, libreadline-dev, libtinfo-dev, libncursesw5-dev (>= 5.3), tk-dev, blt-dev (>= 2.4z), libssl-dev, zlib1g-dev, libbz2-dev, libexpat1-dev, libbluetooth-dev [linux-any] <!profile.nobluetooth>, locales [!armel !avr32 !hppa !ia64 !mipsel], libsqlite3-dev, libffi-dev (>= 3.0.5) [!or1k !avr32], libgpm2 [linux-any], mime-support, netbase, net-tools, bzip2, time, libdb-dev (<< 1:6.0), libgdbm-dev, python:any, help2man, xvfb, xauth
Build-Depends-Indep: python3-sphinx
Build-Conflicts: autoconf2.13, hardening-wrapper, python-cxx-dev, python-xml, python2.7-xml, tcl8.4-dev, tk8.4-dev
Package-List:
 idle-python2.7 deb python optional arch=all
 libpython2.7 deb libs optional arch=any
 libpython2.7-dbg deb debug optional arch=any
 libpython2.7-dev deb libdevel optional arch=any
 libpython2.7-minimal deb python optional arch=any
 libpython2.7-stdlib deb python optional arch=any
 libpython2.7-testsuite deb libdevel optional arch=all
 python2.7 deb python optional arch=any
 python2.7-dbg deb debug optional arch=any
 python2.7-dev deb python optional arch=any
 python2.7-doc deb doc optional arch=all
 python2.7-examples deb python optional arch=all
 python2.7-minimal deb python optional arch=any
Checksums-Sha1:
 c9750707d127d39a6868e1e55f7cd8c7be006b89 17496336 python2.7_2.7.15.orig.tar.gz
 60fdca15eeae8c2f3adb2f0912bc1225cbb1d1c6 565412 python2.7_2.7.15-5.diff.gz
Checksums-Sha256:
 18617d1f15a380a919d517630a9cd85ce17ea602f9bbdc58ddc672df4b0239db 17496336 python2.7_2.7.15.orig.tar.gz
 87adee4eb59bff1b74806a870a55a8a09345a29c12a1499b10428152f1dff095 565412 python2.7_2.7.15-5.diff.gz
Files:
 045fb3440219a1f6923fefdabde63342 17496336 python2.7_2.7.15.orig.tar.gz
 d75374c65660cad871f17bf144d9205e 565412 python2.7_2.7.15-5.diff.gz

-----BEGIN PGP SIGNATURE-----

iQJEBAEBCAAuFiEE1WVxuIqLuvFAv2PWvX6qYHePpvUFAlv+zk8QHGRva29AZGVi
aWFuLm9yZwAKCRC9fqpgd4+m9VQ4EACfYVcyXUtzjFklo0h4PmgquRXlxzkbWj2C
Sy4KetyJYZOP3Ee2K3e9k2k5DayHK8ZovcLDVoMbmhNLElk7jJ5L2sFCCG7FHCOl
D2LR8CUgII3Jneue37HLtaMyjioTBgV7a4k5IaZMDhUeXpPWcbuYr5GYtbn1Hc3c
B4vqtcHW/klZ2YpP/vKAvDv0lH/AllhozMYKf6Edg4brAsI/43ZQY66IUaEkxoPh
GQkpZsKYmEHBA5rW4k3XbnU+fm8uEvd6Khsr82JJDvCgixuJ1w2lyp5Zuiv+puUi
v33nS9Bkw9zSr/hUXNT9qnuMBu1UqXErcAQeYGrKfr0qJE/zOOz7ihucCCJrG/X1
j9ebrUobQFMQ0CQMbIIyPjbHW3HRUb5Xs+6CFsTxgznR+eA6XhlsVMC5Sm3gNZi9
GIofIfq322ftNJS/CcA1Swn8ah78zNecVo6SvWv/kj/g1dKE024DTzJjrX/bCmp2
B4RyNNWvMvbickxZHl7Ny9CI9FoYzP3YqfyAc+dWhxvB1qXzQh7/GN8ec47DEKsf
hMfWHIuuM/xcmz33IYykR43/HnJf6gIddnWkX5I16c0wAzALC4D76BnbN9mn8JdM
14WqSvAaNJ8INpan3oU0Wo8iKGL/uJOf9Ot+3TEEysvzi+ooP9UQTcf4f8+yKz+L
hFD0oFNHMw==
=hVSc
-----END PGP SIGNATURE-----
