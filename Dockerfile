FROM python:3.10.5@sha256:316505e6339d405068ada7f57db3244aed8907dc06ce30725bfb28d7e7ab8b21

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
