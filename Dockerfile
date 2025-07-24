# Download kubernetes binaries needed by kubeauto
# @author: Brinnatt
# @repo: https://github.com/brinnatt/kubeauto-k8s-bin-dockerfile
# @ref: https://github.com/brinnatt/kubeauto

FROM alpine:3.16

ARG K8S_VER=""

COPY multi-platform-download.sh .

RUN sh -x ./multi-platform-download.sh

CMD [ "tail", "-f", "/dev/null" ]