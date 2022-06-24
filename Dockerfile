FROM python:3@sha256:c1db0732678fba8f10a9ead19520088252a1c0f075dc5ca0ad6c6cf2695e5b9b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
