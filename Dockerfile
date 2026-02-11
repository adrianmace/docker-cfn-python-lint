FROM python:3.14.3@sha256:151ab3571dad616bb031052e86411e2165295c7f67ef27206852203e854bcd12

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
