FROM python:3-slim@sha256:71dbb9697431be8d306088365d6da6800d4f19fb024d366d07fbfb006f629150

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
