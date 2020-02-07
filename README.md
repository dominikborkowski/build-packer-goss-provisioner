# build-packer-goss-provisioner
Docker container for building packer and packer-goss-provisioner


## What's included

* [Alpine Linux](https://alpinelinux.org/) 3.10
* [Goss](https://github.com/aelsabbahy/goss/) 0.3.9
* [HashiCorp Packer](https://packer.io/) 1.5.1
* [Packer Provisioner Goss](https://github.com/YaleUniversity/packer-provisioner-goss) 1.0.0


## Results

Build results are in ${GOPATH}/bin/:
* /go/bin/goss
* /go/bin/packer
* /go/bin/packer-provisioner-goss


