FROM registry.access.redhat.com/ubi8/ubi

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN mkdir -p /var/log/rhsm

CMD ["tail","-f","/dev/null"]
