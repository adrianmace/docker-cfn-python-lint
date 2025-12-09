FROM python:3.14.2@sha256:cefb7f4002a1e3be01b44647ebe1b3866b3ef796262ef82a75970c1c24338293

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
