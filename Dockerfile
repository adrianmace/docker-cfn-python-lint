FROM python:3.11.0@sha256:06fc7e23b7a53b2f78e5c6e40dcbc176a783958bbd039247fd04184ca90effad

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
