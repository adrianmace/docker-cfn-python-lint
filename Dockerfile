FROM python:3.13.4@sha256:4b66748c4502b2e8250dc8166d6cec50c19ef839c8cd5a6b13ec76ddcfe59fb3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
