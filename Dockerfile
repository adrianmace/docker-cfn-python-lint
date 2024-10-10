FROM python:3.13.0@sha256:45803c375b95ea33f482e53a461eca8f247617667d703660a06ccf5eb3d05326

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
