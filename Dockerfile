FROM python:3.12.0@sha256:7197dd6f713e9c04499859586de5837bb8349aa6710e6d83d707fcdcd64ae2af

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
