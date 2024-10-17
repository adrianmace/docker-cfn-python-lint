FROM python:3.13.0@sha256:3dd4610d584049295cb210ff083ac86fdc203f04fa7cdf194516cd577c4bb90f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
