#!/bin/bash

#src war file
src='/home/itrxe01/.m2/repository/com/railinc/mrirf/mrirf-webnode/0.0.1-SNAPSHOT/mrirf-webnode-0.0.1-SNAPSHOT.war'
TOMCAT_HOME_DIR='/home/itrxe01/sdks/java/server/tomcat'
TOMCAT_DEPLOY_DIR=$TOMCAT_HOME_DIR'/webapps'

#remove existing files
rm -fdr $TOMCAT_DEPLOY_DIR/mrirf-webnode*
#rm $TOMCAT_DEPLOY_DIR/mrirf-webnode-0.0.1-SNAPSHOT.war
cp $src $TOMCAT_DEPLOY_DIR/.
# remove logs
rm -fdr $TOMCAT_HOME_DIR/logs/* 
