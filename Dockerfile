FROM python:3@sha256:567018293e51a89db96ce4c9679fdefc89b3d17a9fe9e94c0091b04ac5bb4e89

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
