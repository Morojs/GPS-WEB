FROM jboss/wildfly
ADD build/GPS-WEB-SERVICE.war /opt/jboss/wildfly/standalone/deployments/
ADD mysql /opt/jboss/wildfly/modules/system/layers/base/com/
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]