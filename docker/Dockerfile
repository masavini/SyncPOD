FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

RUN set -ex; \
    apt-get update; \
    BUILD_PKGS="git make build-essential"; \
    apt-get -y install ${BUILD_PKGS} perl cpanminus; \
    cpan MP3::Info; \
    cpan Unicode::String; \
    cpan File::Copy; \
    cpan Filesys::DiskFree; \
    cpan Shell; \
    apt-get remove --purge -y ${BUILD_PKGS}; \
    rm -rf /var/lib/apt/lists/*;

COPY SyncPOD /usr/local/bin/
COPY DumpPOD /usr/local/bin/