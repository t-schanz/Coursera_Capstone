FROM jupyter/scipy-notebook
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt --no-cache
RUN pip install -U jupyter
RUN python -m ipykernel install --user
ENV JUPYTER_ENABLE_LAB=yes
EXPOSE 8888:8888
ENTRYPOINT jupyter lab