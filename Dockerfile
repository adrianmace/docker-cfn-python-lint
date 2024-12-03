FROM python:3.13.0@sha256:22723cfdc8ca2aba70201fb9b3d8ab66b33633b260aed95609d7f21a5eb6de33

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
