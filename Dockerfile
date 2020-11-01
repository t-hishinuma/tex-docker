FROM toshiara/alpine-texlive-ja
LABEL maintainer "Toshiaki Hishinuma <hishinuma.toshiaki@gmail.com>"

RUN apk add make  \
&& wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh  \
&& sh ./update-tlmgr-latest.sh && rm update-tlmgr-latest.sh \
&& tlmgr install algorithms algorithmicx newtx  \
&& apk add ghostscript  \
&& rm -rf /var/cache/apk \
&& mkdir /var/cache/apk
