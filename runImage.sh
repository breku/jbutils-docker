WAR_DIRECTORY=/home/brekol/workspaces/private/jbutils/jbutils-ui/target


docker run -d \
--name jbutils \
-p 8080:8080 \
-p 80:80 \
-v $WAR_DIRECTORY/jbutils.war:/usr/local/tomcat/webapps/jbutils.war \
jbutils
