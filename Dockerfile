FROM registry.access.redhat.com/ubi8/ubi
#FROM registry.suse.com/suse/sles12sp4
#FROM registry.suse.com/suse/sle15

COPY opencryptoki-3.12.1-2.el8.s390x.rpm /tmp  
COPY libica-3.6.1-2.el8.s390x.rpm /tmp

RUN rpm -ivh /tmp/opencryptoki-3.12.1-2.el8.s390x.rpm
RUN rpm -ivh /tmplibica-3.6.1-2.el8.s390x.rpm

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN mkdir -p /var/log/rhsm

#RUN yum -y install libica-tools
#ADD *.repo /etc/zypp/repos.d/
#ADD *.service /etc/zypp/services.d

#RUN zypper ar libica
$RUN zypper ar openCryptoki

CMD ["tail","-f","/dev/null"]
