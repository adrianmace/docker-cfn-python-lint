FROM python:3@sha256:b11e076e910597bb542fde506a4aa8b0ead70c85a7510e655990598e672ebb45

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
