FROM python:3.14.3@sha256:788c343877b467e72af452878cb6d2b0ce6a16ffed973e2dc82b57d8d765eb33

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
