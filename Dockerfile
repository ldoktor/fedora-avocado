# This Dockerfile creates an Fedora image with avocado framework installed
#
# VERSION 1.1

FROM fedora
# based on jpetazzo/dind
MAINTAINER Lukas Doktor, ldoktor@redhat.com
# Install and clean in one step to decrease image size
RUN dnf install -y python2-avocado && dnf clean all
CMD avocado
