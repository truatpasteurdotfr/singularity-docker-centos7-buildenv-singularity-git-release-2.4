FROM centos:centos7

RUN yum -y update && yum -y upgrade
RUN yum -y install git \
 libtool autoconf automake make \
 rpm-build 
# from BuildRequires of the spec file
RUN yum -y install libarchive-devel python

RUN git clone https://github.com/singularityware/singularity
RUN (cd singularity && git checkout release-2.4 && git pull && ./autogen.sh && ./configure && make dist && rpmbuild -ta singularity-[0-9]*.tar.gz ) |tee  build.log
RUN tar czvf built.tgz build.log root/rpmbuild/{RPMS,SRPMS}
