#!/bin/sh

echo '...MySql...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/sql/sql-rc.yaml
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/sql/sql-svc.yaml

echo '...HDFS...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/hdfs/hdfs-rc.yaml
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/hdfs/hdfs-svc.yaml

echo '...Hive Metastore...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/metastore/metastore-rc.yaml
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/metastore/metastore-svc.yaml

echo '...Spark - Master...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/apachespark/spark-master-rc.yaml
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/apachespark/spark-master-svc.yaml

echo '...Spark - Worker...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/apachespark/spark-worker-rc.yaml
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/apachespark/spark-worker-svc.yaml

echo '...Airflow...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/scheduler/airflow-rc.yaml
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/scheduler/airflow-svc.yaml

echo '...JupyterHub...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/jupyterhub/jupyterhub-rc.yaml
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/jupyterhub/jupyterhub-svc.yaml

echo '...Dashboard - Weavescope...'
kubectl create -f https://raw.githubusercontent.com/daemonslayer/kub-setup/master/dashboard/weavescope/weavescope.yaml
kubectl describe svc weavescope-app
