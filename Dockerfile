FROM registry.fedoraproject.org/fedora:26-modular
LABEL MAINTAINER "Langdon White" <langdon@fedoraproject.org>
ENV NAME=boltron VERSION=1 RELEASE=1 ARCH=x86_64
LABEL   com.redhat.component="$NAME" \
        name="$FGC/$NAME" \
        version="$VERSION" \
        release="$RELEASE.$DISTTAG" \
        architecture="$ARCH" \
        usage="docker run f26/boltron" \
        summary="Boltron will provide you a running and useful version of the Modular Server Preview."
COPY ./README.md /README.md
RUN microdnf install dnf
CMD ["/bin/bash"]

