FROM python:3.13.1@sha256:d73e9469ba26afb8b47da99420ee23e3c8c4928bc414c9e3259429141964597b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
