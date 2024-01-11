FROM python:3.12.1@sha256:91db98acffb749bdca121f2fd7575e1fe5689478f655383cb2aea36aebf9c72f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
