FROM alpine:edge

RUN apk update && \
	apk upgrade && \
	apk add abuild-rootbld \
        alpine-conf \
        alpine-sdk \
        apk-tools \
        atools \
        build-base \
        busybox \
        ccache \
        dosfstools \
        fakeroot \
        grub-efi \
        mtools \
        squashfs-tools \
        sudo \
        syslinux \
        xorriso
