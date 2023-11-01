FROM python:3.12.0@sha256:db07e1d493e61f2fd2d8ee78697218c22d65039071aef32e7919fb93835fa1d0

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
