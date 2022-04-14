FROM python:3@sha256:ea83294c1fd52c5772958947e323d827af3bd6f0c95537fd24b7faba4c425117

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
