FROM python:3.12.4@sha256:9cccc140f1bf453c774a25afc92b997f1297704ae6905e2b0261aa403156d0ff

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
