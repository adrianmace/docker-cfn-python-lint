FROM python:3@sha256:611fcb179477a13967cc236526b38ddf3d197ee8cebcb3a10946ad0f71c7fe89

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
