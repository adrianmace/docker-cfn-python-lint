FROM python:3.13.1@sha256:872a06ef09d6f897a81f2bbc0310cfba3ff5022f602cffc6bf161a0fbc773f34

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
