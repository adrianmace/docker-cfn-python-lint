FROM python:3.11.4@sha256:080775ff092a46d2b52bf2b65bbebde495ba11d2d6138dc9ba3c901aed01cdc2

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
