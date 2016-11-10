---
published: true
layout: post
---
## python-environment

[Manually registering kernels](http://stackoverflow.com/questions/30492623/using-both-python-2-x-and-python-3-x-in-ipython-notebook). 


Manually registering kernels

Users who do not want to use nb_conda_kernels or still use older versions of anaconda can use following steps to manually register ipython kernels.

configure the python2.7 environment:

conda create -n py27 python=2.7
source activate py27
conda install notebook ipykernel
ipython kernel install --user
configure the python3.5 environment:

conda create -n py35 python=3.5
source activate py35
conda install notebook ipykernel
ipython kernel install --user
