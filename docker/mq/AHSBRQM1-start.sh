#!/bin/bash
 export CONTAINER_ID=AHSBRQM1
docker stop AHSBRQM1
docker rm AHSBRQM1
docker run --privileged --name AHSBRQM1 -e LICENSE=accept -e MQ_QMGR_NAME=AHSBRQM1 -v /var/mqm:/var/mqm -p 1417:1417 -d railinc/ibm-mq-ahsbrqm-dmapp:7.5.0.1

