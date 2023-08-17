FROM python:3.11.4@sha256:85b3d192dddbc96588b719e86991e472b390805a754681a38132de1977d8e429

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
