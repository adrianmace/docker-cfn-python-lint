FROM python:3.10.6@sha256:37b1760868b8d43f4c0d57402ef3296d21cf2ce9801899ceabec1991aa644d08

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
