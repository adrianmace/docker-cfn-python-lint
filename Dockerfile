FROM python:3.13.5@sha256:bdc6c1e5773e8f4f2e8ec47b2fb666daec8bed64f78edd96d4f2c6a91865b14f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
