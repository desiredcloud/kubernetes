#!/bin/sh
set -o errexit

export LAPTOP_HOST_IP="$(ifconfig en0 | egrep -o 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'  | cut -d' ' -f2)"
export KIND_CLUSTER_NAME="kind-cluster"

usage="$(basename "$0") [-h] -- CLI
where:
    -h,  --help                             help text
    -sy,  --show-yaml                       Show Kind cluster yaml
    -cc,  --create-cluster                  Create Kind cluster
        Options:
          -ip, --host-ip    Host's ip address
        Example:
          $ ./kind-cluster.sh --host-ip=192.168.0.102 --create-cluster

    -dc, --delete-cluster                   Delete cluster
        Options:
          -n, --name    Cluster name
        Example:
          $ ./kind-cluster.sh --delete-cluster

    -lc, --list-cluster                     List clusters
    "


SHOW_KIND_CLUSTER_YAML=false
CREATE_KIND_CLUSTER=false
DELETE_KIND_CLUSTER=false
LIST_KIND_CLUSTERS=false


for arg in "$@"
do
    case $arg in
        -sy|--show-yaml)
        SHOW_KIND_CLUSTER_YAML=true
        shift # Remove --show-yaml from processing
        ;;
        -cc|--create-cluster)
        CREATE_KIND_CLUSTER=true
        shift # Remove --create-cluster from processing
        ;;
        -dc|--delete-cluster)
        DELETE_KIND_CLUSTER=true
        shift # Remove --delete-cluster from processing
        ;;
        -lc|--list-cluster)
        LIST_KIND_CLUSTERS=true
        shift # Remove --list-cluster from processing
        ;;
        -n=*|--name=*)
        KIND_CLUSTER_NAME="${arg#*=}"
        shift # Remove --namespace= from processing
        ;;
        *)
        echo "$usage" >&2
        shift # Remove generic argument from processing
        ;;
    esac
done
