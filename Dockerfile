FROM jupyter/scipy-notebook:latest

RUN conda install -q -y \
    rasterio \
    gdal \
    fiona \
    earthpy \
    descartes \
    mapclassify \
    geopandas \
    geoplot \
    cartopy \
    jupyter_contrib_nbextensions \
    jupyter_nbextensions_configurator

RUN jupyter contrib nbextension install --user && \
    jupyter nbextensions_configurator enable --user

CMD ["jupyter", "notebook", "--allow-root", "--ip='0.0.0.0'", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''"]