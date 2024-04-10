FROM python:3.12.3@sha256:fd1ef391c865ad157c06de775369466cc859f7ec6fc17fe66f12d7a9890a06fc

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
