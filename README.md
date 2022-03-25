# docker-cfn-python-lint

[![Tag new releases of cfn-lint](https://github.com/adrianmace/docker-cfn-python-lint/actions/workflows/10-tag-new-releases.yml/badge.svg)](https://github.com/adrianmace/docker-cfn-python-lint/actions/workflows/10-tag-new-releases.yml)
[![Build and publish image to ghcr.io](https://github.com/adrianmace/docker-cfn-python-lint/actions/workflows/20-build-and-publish.yml/badge.svg)](https://github.com/adrianmace/docker-cfn-python-lint/actions/workflows/20-build-and-publish.yml)

Docker image of [aws-cloudformation/cfn-lint](https://github.com/aws-cloudformation/cfn-lint) with automated builds.

# Usage

lint template.yaml:

```bash:
docker run --rm -v $PWD:/data ghcr.io/adrianmace/docker-cfn-python-lint:latest /data/template.yaml
```
