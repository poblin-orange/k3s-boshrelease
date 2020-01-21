#!/bin/bash
wget https://github.com/rancher/k3s/releases/download/v1.17.0%2Bk3s.1/k3s
bosh add-blob k3s k3s/k3s
rm k3s
