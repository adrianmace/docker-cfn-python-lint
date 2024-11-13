FROM python:3.13.0@sha256:f605a30078b1ba8ee0da8df7987a7482c1fcdff7e2daf781843fe524e535dc8d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
