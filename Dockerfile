FROM python:3.12.0@sha256:dd7a653e4c4e9f6c505a6fb709bf1a51ad9d834a5157d6017b07a561d9c4bc46

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
