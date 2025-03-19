FROM python:3.13.2@sha256:c474431dca07367d5c7e818954d481e16652c9097fe8aacfd6d1e8d3d89376a5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
