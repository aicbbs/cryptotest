FROM registry.access.redhat.com/ubi8/ubi

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD ["/bin/bash"]

RUN mkdir -p /var/log/rhsm
