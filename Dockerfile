FROM python:3.13.0@sha256:c590a3669258c6b416f05e4d0ec54197ada40829ee213b1722c545614ea2427a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
