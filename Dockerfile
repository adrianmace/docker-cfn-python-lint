FROM python:3.11.5@sha256:02808bfd640d6fd360c30abc4261ad91aacacd9494f9ba4e5dcb0b8650661cf5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
