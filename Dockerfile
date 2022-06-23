FROM python:3@sha256:5f3906393eea7423cca18fdbf835c364ee945433f2fdf4091b4fb3dd9e195f26

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
