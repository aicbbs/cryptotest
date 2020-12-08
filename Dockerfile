FROM registry.access.redhat.com/ubi8/ubi
#FROM registry.suse.com/suse/sles12sp4
#FROM registry.suse.com/suse/sle15

RUN yum -y install perl openssl

COPY *.rpm /tmp

RUN rpm -Uvh --replacepkgs --nodeps --force /tmp/*.rpm

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#RUN chmod 4755 /bin/su

RUN mkdir -p /var/log/rhsm
#RUN modprobe ap
#RUN lsmod
#RUN lszcrypt

# ROOTにパスワードをセット
#RUN echo 'root:newpassword' |chpasswd

# ユーザを作成
RUN useradd -u 1002 -g 100 newuser 

USER newuser

RUN id
RUN icainfo
RUN icastats
#RUN lsmod
#RUN lszcrypt

#ADD *.repo /etc/zypp/repos.d/
#ADD *.service /etc/zypp/services.d

#RUN zypper ar libica
#RUN zypper ar openCryptoki

CMD ["tail","-f","/dev/null"]
#CMD ["/bin/bash"]
