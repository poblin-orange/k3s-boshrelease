# BOSH release for k3s

This BOSH release and deployment manifest deploy a cluster of k3s

Lightweight Kubernetes. 5 less than k8s. https://k3s.io.


## design overview

Provide a lightweight bosh packaging of Rancher k3s kubernetes distribution

Includes
- Rancher k3s binary
- k9S binary


The bosh release offers 2 jobs to build a full k3s bosh deployment:
- k3s-server job.
- k3s-agent job.


## Usage

This repository includes base manifests and operator files. They can be used for initial deployments and subsequently used for updating your deployments:

```plain
export BOSH_ENVIRONMENT=<bosh-alias>
export BOSH_DEPLOYMENT=k3s
git clone https://github.com/cloudfoundry-community/k3s-boshrelease.git
bosh deploy k3s-boshrelease/manifests/k3s.yml
```

If your BOSH does not have Credhub/Config Server, then remember `--vars-store` to allow generation of passwords and certificates.

### Update

When new versions of `k3s-boshrelease` are released the `manifests/k3s.yml` file will be updated. This means you can easily `git pull` and `bosh deploy` to upgrade.

```plain
export BOSH_ENVIRONMENT=<bosh-alias>
export BOSH_DEPLOYMENT=k3s
cd k3s-boshrelease
git pull
cd -
bosh deploy k3s-boshrelease/manifests/k3s.yml
```
