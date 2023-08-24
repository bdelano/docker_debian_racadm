# Dockerfile for idracadm7 running on debian

## Install
`docker build --platform=linux/AMD64 -t racadm .`

## Run
`docker run --platform=linux/AMD64 -it racadm bash`

## Instructions
The following Docker file and instructions were derived from this blog post: https://www.privex.io/articles/install-idrac-tools-racadm-ubuntu-debian/.  In order to make things a little simpler I have taken the liberty of using `alien` to convert the rpm's to deb packages and included them in this repository.  If you want to do this yourself do the following:

### Please do the following on a debian system or within your favorite docker container
* download the latest idrac tools from here: https://dl.dell.com/FOLDER05920767M/1/
* untar the package e.g. `tar -zxvf DellEMC-iDRACTools-Web-LX-9.4.0-3732_A00.tar.gz`
* go here: `cd iDRACTools/racadm/RHEL8/x86_64`
* type `alien *.rpm`
* create a directory called idractools `mkdir idractools`
* move the deb files to that directory: `mv *.deb idractools`  
