FROM python:3@sha256:dfe2a9638ac0043d950e848df66db599e345af6fe14270c40b9403f3567076dd

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
