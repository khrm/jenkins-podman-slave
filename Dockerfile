FROM openshift/jenkins-slave-base-centos7

LABEL maintainer "Devtools <devtools@redhat.com>"
LABEL author "Devtools <devtools@redhat.com>"

RUN yum -y install epel-release centos-release-openshift-origin311.noarch && \
    yum -y install --enablerepo=epel podman make golang git podman origin-clients && \
    yum clean all

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
