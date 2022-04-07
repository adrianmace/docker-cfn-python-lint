FROM python:3@sha256:6657299dcc5c646b412415d8cd3b8cfe8f0ea386c1dc62451a74b1d648437e47

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
