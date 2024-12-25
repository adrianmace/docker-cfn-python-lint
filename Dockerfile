FROM python:3.13.1@sha256:08371fabbdb8fd1c1256fa96492a27339bf60cba3cb26af7a2e5a56bc5060af4

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
