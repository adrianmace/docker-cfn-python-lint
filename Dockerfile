FROM python:3.13.5@sha256:28f60ab75da2183870846130cead1f6af30162148d3238348f78f89cf6160b5d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
