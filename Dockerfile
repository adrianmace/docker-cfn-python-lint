FROM python:3.13.5@sha256:7175df81f9a313ee52286c94a5c35620d37afb31f9e05e47a3e058db84d53854

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
