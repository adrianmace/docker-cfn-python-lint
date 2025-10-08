FROM python:3.14.0@sha256:8a013ee064cf973af6a806633081913532c7a351f8dc020f7cd613bc8a021796

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
