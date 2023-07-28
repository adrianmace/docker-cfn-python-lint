FROM python:3.11.4@sha256:2263944e52112e615353637321b137c6ea2942d0a9977434d0874b2fb605f496

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
