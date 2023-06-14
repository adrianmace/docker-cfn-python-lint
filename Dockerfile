FROM python:3.11.4@sha256:daa7f37b5cb319cf7f02a774d54e40b630d197a15c544e48723cc550bd64869c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
