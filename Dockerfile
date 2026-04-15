FROM python:3.14.4@sha256:0fc811a0b434d5bf3a3736f3da2deeb2babc3f760fc9ddd9c727ef5102cd3d22

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
