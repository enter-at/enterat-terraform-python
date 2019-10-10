# terraform-python

A Docker container that includes Terraform and Python.
Functions identically to the official Terraform container.

Pre-built containers are available on Dockerhub:
https://hub.docker.com/r/enterat/terraform-python

## Versioning
Container versions are as follows:

```
<tf-version>-<revision>
```

So for example, `0.12.9-1` would be the first container revision with Terraform 0.12.9.

## Building for Dockerhub

```
# Build the container
$ docker build . -t enterat/terraform-python:<tf-version>-<revision>

# Push to Dockerhub
$ docker push enterat/terraform-python:<tf-version>-<revision>

# Update 'latest' tag
$ docker tag
```
