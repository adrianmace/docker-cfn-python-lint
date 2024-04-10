FROM python:3.12.3@sha256:67414d5ed7792f54139c96be1934ce3b27c11c072eae51298f2e648e82e19938

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
