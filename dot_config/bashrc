





dataSet='/home/itrxe01/workspace/data_resources/wip'


#MQBROWSER_HOME='/home/itrxe01/workspace/myWks/itrxe01/apps/rte.sandbox/rte.sandbox.spring.jms'






export ISS_LOG='/tcserver2.6/iss/logs/iss-webapp.log'


export ISS_LAST_DEPLOY='prod-1.0.3'


genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_$#*% < /dev/urandom | head -c ${l} | xargs
}

# if [ ! -d "/tmp/wks" ]; then
# mkdir /tmp/wks
# fi

if [ ! -d "/tmp/wks/logs" ]; then
 mkdir -p /tmp/wks/logs
fi

#if [ ! -h "/tmp/wks/logs/iss-batch.log" ]; then
#	ln -s /home/itrxe01/workspace/ideWks/sts-wks-iss2/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/logs/iss-batch.log /tmp/wks/logs/iss-batch.log
#fi

# if [ ! -h "/tmp/wks/logs/iss-webapp.log" ]; then
# 	ln -s /home/itrxe01/workspace/ideWks/sts-wks-iss2/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/logs/iss-webapp.log /tmp/wks/logs/iss-webapp.log
# fi
