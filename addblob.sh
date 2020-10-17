#!/bin/bash
wget https://github.com/rancher/k3s/releases/download/v1.19.3%2Bk3s1/k3s -O src/k3s
bosh add-blob src/k3s k3s/k3s

wget https://github.com/rancher/k3s/releases/download/v1.19.3%2Bk3s1/k3s-airgap-images-amd64.tar -O src/k3s-airgap-images-amd64.tar
bosh add-blob src/k3s-airgap-images-amd64.tar k3s-images/k3s-airgap-images-amd64.tar

wget https://github.com/derailed/k9s/releases/download/v0.22.1/k9s_Linux_x86_64.tar.gz -O src/k9s_Linux_x86_64.tar.gz
cd src
tar xfv ./k9s_Linux_x86_64.tar.gz
cd ..
bosh add-blob src/k9s k9s/k9s


