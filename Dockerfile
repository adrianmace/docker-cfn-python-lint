FROM python:3.12.0@sha256:17715e8a627c47fa2a52829d470328426afd8de590aabb10a59aadabd7ff0099

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
