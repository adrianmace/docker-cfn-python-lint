FROM python:3@sha256:bef6fd726fb8825d5cf26933d8477505b14505be1a98394405c8840c1c266bdd

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
