FROM python:3.11.4@sha256:bc1d76a8360d77a6ab467a8c48ce40369707c9aa76492df094968ce55cca88ae

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
