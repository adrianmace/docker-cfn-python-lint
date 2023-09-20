FROM python:3.11.5@sha256:3c51707dc38ba1332d1a71b3f2613357e3b9aaaf010df0778a715f84981d5e61

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
