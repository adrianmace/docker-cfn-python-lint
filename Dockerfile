FROM python:3.12.2@sha256:eddb404b523afd920cb1bc31ff7309f6375898baf506ab2bb1e31357da693426

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
