FROM python:3.11.4@sha256:b3732a67dff67984721cabcb08cec7f7ccce87adfc96de7d5209fbfd19579f3f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
