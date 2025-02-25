FROM python:3.13.2@sha256:34306fdf795b9c55c0d258a00e822399cf20572501f92613755ef036283a1814

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
