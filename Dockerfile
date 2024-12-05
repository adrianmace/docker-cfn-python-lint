FROM python:3.13.1@sha256:220d07595f288567bbf07883576f6591dad77d824dce74f0c73850e129fa1f46

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
