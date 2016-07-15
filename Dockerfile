# This Dockerfile creates an Fedora image with installed qemu
#
# VERSION 0.1

FROM fedora
# based on jpetazzo/dind
MAINTAINER Lukas Doktor, ldoktor@redhat.com
# Install and clean in one step to decrease image size
RUN curl https://repos-avocadoproject.rhcloud.com/static/avocado-fedora.repo -o /etc/yum.repos.d/avocado.repo && dnf install -y avocado avocado-plugins-output-html && dnf clean all && rm /etc/yum.repos.d/avocado.repo
CMD avocado
