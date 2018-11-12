# HOST PAM DEL BUENO DEL RICO
#-----------------------------------------
FROM fedora:27
LABEL author="@loputoAMOdeverdad @vanderwatafak"
LABEL description="LDAPHOST -edt.org cn DATADB"
RUN dnf -y install procps passwd openldap-clients nss-pam-ldapd
RUN mkdir /opt/docker/
COPY * /opt/docker/
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]


