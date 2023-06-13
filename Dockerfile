FROM python:3.11.4@sha256:188e45cf9f0a2e6404666a2eaf04ef6e5c7a2bf6e34c28bca247dd82e5556fb6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
