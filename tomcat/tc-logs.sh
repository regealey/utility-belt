#!/bin/bash
TOMCAT_HOME_DIR='/home/itrxe01/sdks/java/server/tomcat'
TOMCAT_LOG_DIR=$TOMCAT_HOME_DIR'/logs'
# remove logs
rm -fdr $TOMCAT_LOG_DIR/*
