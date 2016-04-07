#/bin/sh
# Images to use
IMAGE_MYSQL=pub.domeos.org/domeos/mysql:5.7
IMAGE_GRAPH=pub.domeos.org/domeos/falcon-graph:0.5.6
IMAGE_TRANSFER=pub.domeos.org/domeos/falcon-transfer:0.0.14
IMAGE_QUERY=pub.domeos.org/domeos/falcon-query:1.4.3
IMAGE_DASHBOARD=pub.domeos.org/domeos/falcon-dashboard:0.2
IMAGE_ETCD=pub.domeos.org/domeos/domeos-etcd:2.2.1
IMAGE_KUBERNETES=pub.domeos.org/domeos/kubernetes:1.1.3
IMAGE_KUBE2SKY=pub.domeos.org/domeos/kube2sky:0.1
IMAGE_SKYDNS=pub.domeos.org/webhippie/skydns
IMAGE_MYSQL_INIT=pub.domeos.org/domeos/domeos-mysql-init:0.2
#IMAGE_MYSQL_INIT=domeos-mysql-init-test
IMAGE_SERVER=pub.domeos.org/domeos/server:1.0



docker pull $IMAGE_MYSQL
docker pull $IMAGE_GRAPH
docker pull $IMAGE_TRANSFER
docker pull $IMAGE_QUERY
docker pull $IMAGE_DASHBOARD
docker pull $IMAGE_ETCD
docker pull $IMAGE_KUBERNETES
docker pull $IMAGE_KUBE2SKY
docker pull $IMAGE_SKYDNS
docker pull $IMAGE_MYSQL_INIT
docker pull $IMAGE_SERVER

docker tag $IMAGE_MYSQL codejuan/domeos_mysql:5.7
docker tag $IMAGE_GRAPH codejuan/domeos_falcon-graph:0.5.6
docker tag $IMAGE_TRANSFER codejuan/domeos_falcon-transfer:0.0.14
docker tag $IMAGE_QUERY codejuan/domeos_falcon-query:1.4.3
docker tag $IMAGE_DASHBOARD codejuan/domeos_falcon-dashboard:0.2
docker tag $IMAGE_ETCD codejuan/domeos_domeos-etcd:2.2.1
docker tag $IMAGE_KUBERNETES codejuan/domeos_kubernetes:1.1.3
docker tag $IMAGE_KUBE2SKY codejuan/domeos_kube2sky:0.1
docker tag $IMAGE_SKYDNS codejuan/domeos_webhippie_skydns
docker tag $IMAGE_MYSQL_INIT codejuan/domeos-mysql-init:0.2
docker tag $IMAGE_SERVER codejuan/domeos_server:1.0



docker push  codejuan/domeos_mysql:5.7
docker push  codejuan/domeos_falcon-graph:0.5.6
docker push  codejuan/domeos_falcon-transfer:0.0.14
docker push  codejuan/domeos_falcon-query:1.4.3
docker push  codejuan/domeos_falcon-dashboard:0.2
docker push  codejuan/domeos_domeos-etcd:2.2.1
docker push  codejuan/domeos_kubernetes:1.1.3
docker push  codejuan/domeos_kube2sky:0.1
docker push  codejuan/domeos_webhippie_skydns
docker push  codejuan/domeos-mysql-init:0.2
docker push  codejuan/domeos_server:1.0
