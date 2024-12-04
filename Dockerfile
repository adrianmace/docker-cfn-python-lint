FROM python:3.13.0@sha256:061dfa2a69c174a42781e083ce72e9a4570a07b9efead37c433a8ccad045d3bf

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
