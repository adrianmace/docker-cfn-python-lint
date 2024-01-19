FROM python:3.12.1@sha256:04faeffccd0493a32415a18a1329db12ea2ab13d045d263292845f1cf1d44312

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
