FROM python:3.13.4@sha256:b89c8a45626cd670f81e0504084362c7e88dd432090b08f6de1b7b047fcf6c4a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
