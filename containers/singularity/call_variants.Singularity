Bootstrap: docker
From: nfcore/base

%labels
    MAINTAINER Robert A. Petit III <robert.petit@emory.edu>
    DESCRIPTION Singularity image containing requirements for the Bactopia call_variants process
    VERSION 1.3.0

%environment
    PATH=/opt/conda/envs/bactopia-call_variants/bin:$PATH
    export PATH

%files
    conda/call_variants.yml /

%post
    /opt/conda/bin/conda env create -f /call_variants.yml
    /opt/conda/bin/conda clean -a
