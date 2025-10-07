FROM python:3.13.7@sha256:fe841081ec55481496a4ab25e538833741295d57d2abdec8d38d74d65fb4715b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
