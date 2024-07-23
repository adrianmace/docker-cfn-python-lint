FROM python:3.12.4@sha256:100002d992a6b588261d6e1651adcde1dd08347916065c7a87ee459a65fe919a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
