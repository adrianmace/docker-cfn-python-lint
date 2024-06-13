FROM python:3.12.4@sha256:4584ea46d313a10e849eb7c5ef36be14773418233516ceaa9e52a8ff7d5e35a5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
