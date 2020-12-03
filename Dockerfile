FROM registry.access.redhat.com/ubi8/ubi
#FROM registry.suse.com/suse/sles12sp4
#FROM registry.suse.com/suse/sle15

COPY opencryptoki-3.12.1-2.el8.s390x.rpm /tmp
COPY libica-3.6.1-2.el8.s390x.rpm /tmp 
COPY opencryptoki-ccatok-3.12.1-2.el8.s390x.rpm /tmp
COPY opencryptoki-ep11tok-3.12.1-2.el8.s390x.rpm /tmp
COPY opencryptoki-icatok-3.12.1-2.el8.s390x.rpm /tmp 
COPY opencryptoki-icsftok-3.12.1-2.el8.s390x.rpm /tmp
COPY opencryptoki-libs-3.12.1-2.el8.s390x.rpm /tmp
COPY opencryptoki-swtok-3.12.1-2.el8.s390x.rpm /tmp
COPY opencryptoki-tpmtok-3.12.1-2.el8.s390x.rpm /tmp
COPY libica-devel-3.6.1-2.el8.s390x.rpm /tmp
COPY libical-3.0.3-3.el8.s390x.rpm /tmp

RUN rpm -ivh opencryptoki-3.12.1-2.el8.s390x.rpm libica-3.6.1-2.el8.s390x.rpm opencryptoki-ccatok-3.12.1-2.el8.s390x.rpm opencryptoki-ep11tok-3.12.1-2.el8.s390x.rpm opencryptoki-icatok-3.12.1-2.el8.s390x.rpm opencryptoki-icsftok-3.12.1-2.el8.s390x.rpm opencryptoki-libs-3.12.1-2.el8.s390x.rpm opencryptoki-swtok-3.12.1-2.el8.s390x.rpm opencryptoki-tpmtok-3.12.1-2.el8.s390x.rpm libica-devel-3.6.1-2.el8.s390x.rpm libical-3.0.3-3.el8.s390x.rpm

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN mkdir -p /var/log/rhsm

#RUN yum -y install libica-tools
#ADD *.repo /etc/zypp/repos.d/
#ADD *.service /etc/zypp/services.d

#RUN zypper ar libica
#RUN zypper ar openCryptoki

CMD ["tail","-f","/dev/null"]
