# ligo-cvmfs

This repository contains a couple of scripts that can be used to
install [publicly available LIGO software](https://wiki.ligo.org/Computing/ScientificLinux7) and connect to 
[Gravitational Wave Open Science Center data sources](https://www.gw-openscience.org/about) via [CVMFS](https://cernvm.cern.ch/portal/filesystem).

They should work on a fresh [SL7 install](https://www.scientificlinux.org/).

Just run them as root. Like any scripts that you download, you should at least
give them a look to make sure that they are not doing something malicious.

After running these two scripts:

``` sh
./cvmfs_sl7.sh
./lcsoft_rpms.sh

```

your SL7 box should be ready to run LIGO Software on publicly available LIGO data.
