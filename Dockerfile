FROM python:3@sha256:b1c16e981e9d711ed60f56ab6227687b92e8671744d542dbdca80be9be7a875c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
