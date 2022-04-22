FROM python:3@sha256:edc8e6a550e4be7c340df18b252364554ea46a5ac14be4dcad711c285d25d1db

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
