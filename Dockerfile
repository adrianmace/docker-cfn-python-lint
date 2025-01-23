FROM python:3.13.1@sha256:6ee79759eb6c6843f7aec973df1d3ae60f7199822669deaf77fba16a7b27d1db

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
