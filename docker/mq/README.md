# AHS Websphere Queue manager docker build
Build a docker image that has AHSI Queue manager for local development purpose only.

>Docker hub: https://hub.docker.com/r/anoopnair/ibm-mq-debian/

## Building image
- ``docker build -t railinc/ibm-mq-ahsbrqm-dmapp:7.5.0.1 .``
- ``docker build -t railinc/ibm-mq-ahsbrqm-dmapp:7.5.0.2 .``


## Start Queue manager
- ``./AHSBRQM1-start.sh``

## Stop queue manager
- ``./AHSBRQM1-stop.sh``


## MQSC
### Adding a new MQ config like queue/topic
- Add queue configs in config.mqsc file
- Stop running container
- Build image again
- Start container
