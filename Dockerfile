#FROM registry.access.redhat.com/ubi8/ubi
FROM registry.suse.com/suse/sles12sp4

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN mkdir -p /var/log/rhsm

#RUN yum -y install libica-tools
RUN rpm -Uvh libica-tools

CMD ["tail","-f","/dev/null"]
