FROM python:3.12.1@sha256:47aa8d113595a45c336252f32d6833677e209efcea3eeeefa989d068f043f42f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
