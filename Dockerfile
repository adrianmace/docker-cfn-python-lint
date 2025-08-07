FROM python:3.13.6@sha256:9fc93500919b2d342c4d4ef12e1d94d61d1aa4c20042665c3ce08330206ea1d6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
