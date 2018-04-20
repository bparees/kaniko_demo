#FROM docker.io/centos/nodejs-8-centos7
FROM docker.io/centos/nodejs-8-centos7@sha256:8d144d0e2a7d57b537e83f68a6a4aef495850788c6dd5173d1c75fbd45e5ca0b
ADD . /tmp/src
USER root
#RUN rm -rf /tmp/src/.git
#RUN /usr/libexec/s2i/assemble
RUN /tmp/src/.s2i/bin/assemble

ENTRYPOINT /usr/libexec/s2i/run

