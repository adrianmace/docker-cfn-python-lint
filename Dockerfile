FROM python:3.13.0@sha256:b740d32975a4c007dfc7a386444298ba9f443855635b71479bb8ce829682d931

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
