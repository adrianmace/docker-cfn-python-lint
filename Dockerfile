FROM python:3.14.2@sha256:fbf695a1b7e4fd39dfac43165c0da0949262531ecd8e901abe641d79f596af80

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
