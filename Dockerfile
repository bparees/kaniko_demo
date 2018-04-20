FROM docker.io/centos/nodejs-8-centos7
ADD . /tmp/src
USER root
#RUN rm -rf /tmp/src/.git
#RUN /usr/libexec/s2i/assemble
RUN /tmp/src/.s2i/bin/assemble

ENTRYPOINT /usr/libexec/s2i/run

