FROM python:3.11.5@sha256:60c29ed05823b486920dd92189e6fdf9da1f957b44ae8b476aa973e085d3ef9b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
