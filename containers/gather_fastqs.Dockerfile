FROM nfcore/base:1.12.1

LABEL base.image="nfcore/base:1.12.1"
LABEL software="Bactopia - gather_fastqs"
LABEL software.version="1.6.1"
LABEL description="A flexible pipeline for complete analysis of bacterial genomes"
LABEL website="https://bactopia.github.io/"
LABEL license="https://github.com/bactopia/bactopia/blob/master/LICENSE"
LABEL maintainer="Robert A. Petit III"
LABEL maintainer.email="robert.petit@emory.edu"
LABEL conda.env="bactopia/conda/linux/gather_fastqs.yml"
LABEL conda.md5="823fcc9387a308469978d7deeddc9e6a"

COPY conda/linux/gather_fastqs.yml /
COPY bin/check-assembly-accession.py /
RUN conda env create -q -f gather_fastqs.yml && conda clean -y -a

ENV PATH /opt/conda/envs/bactopia-gather_fastqs/bin:$PATH
