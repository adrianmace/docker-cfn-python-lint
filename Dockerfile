FROM python:3@sha256:ff948edd14a5a045b01205028d90dba91bc65a22bc3b61f4253d553730d1f27a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
