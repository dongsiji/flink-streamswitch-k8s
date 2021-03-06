#!/bin/sh

helm install kafka bitnami/kafka \
--set zookeeper.enabled=false \
--set replicaCount=1 \
--set externalZookeeper.servers=zookeeper.default.svc.cluster.local \
--set deleteTopicEnable=true
