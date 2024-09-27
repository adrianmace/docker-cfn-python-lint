FROM python:3.12.6@sha256:0331e2b1cac7f32047a02dffbf4f07d529b80f4a30ead5bad3e603e29ed9c43a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
