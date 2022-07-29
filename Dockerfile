FROM python:3.10.5@sha256:b1a4d9bcebe696cf805803f98747d3ccd885504bd1473dc45db2014d08622de5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
