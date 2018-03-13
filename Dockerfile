FROM continuumio/anaconda3:4.2.0
MAINTAINER Jaime Sanchez "jaime@grupocitec.com"

RUN conda install --yes --quiet jupyter
RUN mkdir /opt/notebooks
RUN conda install --yes -c ibmdecisionoptimization cplex 
RUN conda install --yes sphinx
RUN pip install docplex
RUN pip install geopy folium

EXPOSE 8888
CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]
