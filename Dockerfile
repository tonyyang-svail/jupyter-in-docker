FROM python:3.7

RUN pip3 install --upgrade pip
RUN pip3 install jupyter

RUN mkdir /mymagics
ENV PYTHONPATH /mymagics
COPY mymagic.py /mymagics

# https://stackoverflow.com/a/32683001
ENV IPYTHON_STARTUP /root/.ipython/profile_default/startup/
RUN mkdir -p $IPYTHON_STARTUP
RUN echo 'get_ipython().magic(u"%reload_ext mymagic")' >> $IPYTHON_STARTUP/00-first.py
RUN echo 'get_ipython().magic(u"%autoreload 2")' >> $IPYTHON_STARTUP/00-first.py

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
