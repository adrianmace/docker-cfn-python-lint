FROM python:3.13.6@sha256:68d0775234842868248bfe185eece56e725d3cb195f511a21233d0f564dee501

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
