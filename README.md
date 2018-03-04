# singularity-docker-centos7-buildenv-singularity-git-release-2.4
centos7 build env for singularity/git-release-2.4

example Dockerfile provided for convenience.

Running without installation:
```
singularity run shub://truatpasteurdotfr/singularity-docker-centos7-buildenv-singularity-git-release-2.4
```
Building:
```
sudo singularity build singularity-docker-centos7-buildenv-singularity-git-release-2.4.simg  Singularity
```
Download and rename:
```
singularity pull --name "singularity-docker-centos7-buildenv-singularity-git-release-2.4" shub://truatpasteurdotfr/singularity-docker-centos7-buildenv-singularity-git-release-2.4
```
Running with a separate $HOME 
```
mkdir -p  ~/singularity.d/home/singularity-docker-centos7-buildenv-singularity-git-release-2.4
singularity run -H  ~/singularity.d/home/singularity-docker-centos7-buildenv-singularity-git-release-2.4 singularity-docker-centos7-buildenv-singularity-git-release-2.4.simg
```
