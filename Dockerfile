FROM centos:7

WORKDIR /shmcli

ARG VERSION=3.0.0.29

# Downloading from Dell directly in the Dockerfile gets you 403'd. Instead we'll just store it in the repo.
COPY ServerHardwareManager-${VERSION}-RHEL7-installer.tar.gz .
RUN tar -xzf ServerHardwareManager-${VERSION}-RHEL7-installer.tar.gz \
    && ./ServerHardwareManager-${VERSION}-RHEL7-installer --mode unattended \
    && rm -f ./*