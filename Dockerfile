FROM python:3.14.2@sha256:c951a589819a647ef52c8609a8ecf50a4fa23eab030500e3d106f3644431ff30

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
