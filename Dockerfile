FROM python:3.12.2@sha256:524e72ee6d31941f69d0e24be5c04f0fbbdc3d745730e5e0242cee31562e1c31

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
