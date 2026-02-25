FROM python:3.14.3@sha256:b0a637ba74875a5f9ce0a7844cd8e2b76e97650072d0f455410182a1b7d6d62f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
