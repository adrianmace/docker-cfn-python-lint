FROM python:3@sha256:982515c52a3cbee52f55ff3369b7c08958a0f2eebab92dbaec463702d66c4d2d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
