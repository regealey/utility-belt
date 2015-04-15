

# setup my favorite alias

alias go-rmc2='cd /home/itrxe01/workspace/gitsvn/rmc2'
alias go-irf='cd /home/itrxe01/workspace/gitsvn/irf/mr/mrirf'
alias go-rally='cd /home/itrxe01/workspace/rally'
alias go-iss='cd /home/itrxe01/workspace/gitsvn/iss'

alias doprj='cd /home/itrxe01/workspace/myWks'
alias go-rnd='cd /home/itrxe01/workspace/gitsvn/RnD'
alias f_xml='find . -name \*.xml | grep -vw target | xargs grep $@'
alias f_java='find . -name \*.java | grep -vw target | xargs grep $@'
alias f_script='echo "css js jsp html htm" && find . -name \*.js -o -name \*.css  -o -name \*.jsp  -o -name \*.html -o -name \*.htm | grep -vw target | grep -vw jquery | xargs grep $@'
alias go-data='cd /home/itrxe01/workspace/data_resources/wip'
alias go-sandbox='cd /home/itrxe01/workspace/sandbox'

alias tcdeploy='cd /home/itrxe01/workspace/gitsvn/irf/mr/mrirf; mvn tomcat:redeploy -DskipTests'
alias tcstart='catalina.sh start'
alias tcstop='catalina.sh stop'

dataSet='/home/itrxe01/workspace/data_resources/wip'
alias do997='mvnMQBrowser -DQ=GISD.CSM.FROM.TRANSLATOR.TO.RMS; cp ./target/GISD.CSM.FROM.TRANSLATOR.TO.RMS-* $dataSet/997/.'
alias do824='mvnMQBrowser -DQ=GISD.CSM.TO.TRANSLATOR.824; cp ./target/GISD.CSM.TO.TRANSLATOR.824-* $dataSet/824/.'
alias doCSMI='mvnMQBrowser -DQ=GISD.CSM.FROM.TRANSLATOR; rm -fdr $dataSet/csm-i/*; cp ./target/GISD.CSM.FROM.TRANSLATOR-* $dataSet/csm-i/.'
alias doCSMItest='mvnMQBrowser -DQ=GIST.CSM.FROM.TRANSLATOR -DCF=mcfTst; rm -fdr $dataSet/csm-i/*; cp ./target/GIST.CSM.FROM.TRANSLATOR-* $dataSet/csm-i-test/.'
alias doCSMO='mvnMQBrowser -DQ=GISD.CSM.TO.TRANSLATOR.431; rm -fdr $dataSet/csm-o/*; cp ./target/GISD.CSM.TO.TRANSLATOR.431-* $dataSet/csm-o/.'
alias doRMS='mvnMQBrowser -DQ=GISD.CSM.FROM.TRANSLATOR.TO.RMS -DCF=mcfDev; rm -fdr $dataSet/rms/*; cp ./target/GISD.CSM.FROM.TRANSLATOR.TO.RMS* $dataSet/rms/.'
alias doRMStest='mvnMQBrowser -DQ=GIST.CSM.FROM.TRANSLATOR.TO.RMS -DCF=mcfTst; rm -fdr $dataSet/rmstest/*; cp ./target/GIST.CSM.FROM.TRANSLATOR.TO.RMS* $dataSet/rmstest/.'
alias doDLQ='mvnMQBrowser -DQ=AART.CSM.INBOUND.DLQ; rm -fdr $dataSet/csm-dlq/*; cp ./target/AART.CSM.INBOUND.DLQ-* $dataSet/csm-dlq/.'
alias doJmsPurge='mvnMQPurge -DQ=ITRXE01.ISS'
alias doJmsGroupPurge='mvnMQPurge -DQ=GISD.CSM.FROM.TRANSLATOR;mvnMQPurge -DQ=GISD.CSM.TO.TRANSLATOR.824;mvnMQPurge -DQ=GISD.CSM.FROM.TRANSLATOR.TO.RMS' 

#alias do-tc-kill='ps -ef | grep mtomcat | grep Bootstrap | awk '{print "echo " $2}''
# maven alias to run java main class
alias mvnMQPublish='cd /home/itrxe01/workspace/myWks/rte.sandbox/rte.sandbox.spring.jms; mvn exec:java -Dexec.mainClass="rte.sandbox.spring.jms.MQPublisher"'

#MQBROWSER_HOME='/home/itrxe01/workspace/myWks/itrxe01/apps/rte.sandbox/rte.sandbox.spring.jms'
#alias mvnMQBrowser='cd $MQBROWSER_HOME/; mvn exec:java -Dexec.mainClass="rte.sandbox.spring.jms.MQBrowser"'
#alias mvnMQPurge='cd $MQBROWSER_HOME/; mvn exec:java -Dexec.mainClass="rte.sandbox.spring.jms.MQPurgeQue"'

alias go-wks='cd /tmp/wks'

alias go-arch='cd /home/itrxe01/workspace/gitsvn/railinc-archetypes'


alias go-ui='cd /home/itrxe01/workspace/gitsvn/railinc-archetypes' 
alias go-seq='cd /home/itrxe01/workspace/iss-wks/day2day/seqGen/gisprd/iss'

alias go-gsrc='cd /home/itrxe01/workspace/src/gsrc'
alias ytd='youtube-dl   -o "%(title)s.%(ext)s" $1'
alias go-wip='cd /tmp/wks/wip'

alias do-iss-tail-dev07='ssh dev07 "tail -f /tcserver2.6/iss/logs/iss-webapp.log" '
alias do-iss-tail-dev08='ssh dev08 "tail -f /tcserver2.6/iss/logs/iss-webapp.log" '
export ISS_LOG='/tcserver2.6/iss/logs/iss-webapp.log'
alias go-iss-cobol='cd /home/itrxe01/workspace/wip/issWks/cobol'

alias do-iss-compSettle="xclip -o | sed -e 's/^.*|//g' "
alias go-iss-current="cd /tmp/wks/wip/issWks/debugWks/de11367"

export ISS_LAST_DEPLOY='prod-1.0.3'
alias do-iss-since-last-deploy="go-iss && git log --grep='DE\|US' $ISS_LAST_DEPLOY..HEAD --oneline | cut -d\  -f 2 | sort -u"

alias go-iss-groovy='cd /home/itrxe01/workspace/ideWks/sts-wks-iss/dry.groovy/src/main/groovy/rte/sandbox/dry/groovy'
#alias do-iss-dev-multitail="multitail -l 'ssh user@host1 "tail -f /path/to/log/file"' -l 'ssh user@host2 "tail -f /path/to/log/file"'"
alias testMe='echo $ISS_LOG'

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
