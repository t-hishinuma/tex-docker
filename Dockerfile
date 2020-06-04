FROM toshiara/alpine-texlive-ja
LABEL maintainer "Toshiaki Hishinuma <hishinuma.toshiaki@gmail.com>"

RUN apk add make \
&& tlmgr update --self \
&& tlmgr install algorithms algorithmicx newtx
