FROM pytorch/pytorch:2.11.0-cuda12.8-cudnn9-devel

RUN pip install --break-system-packages jupyterlab ipykernel ipywidgets

RUN python -m ipykernel install --sys-prefix

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", \
     "--no-browser", "--allow-root", "--LabApp.token=''"]
