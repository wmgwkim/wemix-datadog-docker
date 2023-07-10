# 1.find gwemix docker internal ip 
GWEMIX_CONTAINER_IP=$(ps -ef | grep -v grep | grep 'host-port 6060' | tail -1 | awk -F '-container-ip ' '{print $2}' | awk '{print $1}')

# 2. change the wemix3.0 metric setting
sed -i "s/localhost/$GWEMIX_CONTAINER_IP/g" datadog-yaml/prometheus_conf.yaml
