FROM jupyter/datascience-notebook
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt --no-cache
RUN conda install eccodes -y
ENV JUPYTER_ENABLE_LAB=yes
EXPOSE 8888:8888
ENTRYPOINT jupyter lab