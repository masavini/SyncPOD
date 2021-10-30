#! /usr/bin/env bash

read -r PROG_DIR < <(
    cd "${0%/*}" && pwd
)

IPOD_MNT='/media/teo/IPOD'
MUSIC_DIR='/home/teo/media/babbo/music/Music'

docker run \
    -it \
    --rm \
    --name sync-pod \
    --user 1000:1000 \
    --volume "${PROG_DIR}"/ipod:/home/teo/.ipod \
    --volume "${IPOD_MNT}":/mnt/IPOD \
    --volume "${MUSIC_DIR}":/mnt/Music \
    --volume /etc/passwd:/etc/passwd:ro \
    --volume /etc/group:/etc/group:ro \
    masavini/sync-pod:0.68 \
    SyncPOD "$@"