FROM pytorch/pytorch:2.11.0-cuda12.8-cudnn9-devel

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN pip install jupyterlab ipywidgets

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8888

CMD ["/start.sh"]
