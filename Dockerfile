FROM continuumio/miniconda3

ADD environment.yml environment.yml
RUN conda env create -f environment.yml
RUN conda clean --all -y
RUN pip cache purge