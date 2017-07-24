FROM registry.fedoraproject.org/fedora:26-modular
LABEL MAINTAINER "Langdon White" <langdon@fedoraproject.org>
ENV NAME=boltron VERSION=1 RELEASE=1 ARCH=x86_64
LABEL   com.redhat.component="https://pagure.io/modularity/issues" \
        name="$FGC/$NAME" \
        version="$VERSION" \
        release="$RELEASE.$DISTTAG" \
        usage="docker run --rm -it f26-modular/boltron /bin/bash" \
        summary="Boltron will provide you a running and useful version of the Modular Server Preview."
COPY ./README.md /README.md
RUN microdnf install dnf
CMD ["/bin/bash"]

