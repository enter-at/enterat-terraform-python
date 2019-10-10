FROM python:3.7-alpine

RUN apk add --update git bash curl unzip zip openssl make

ENV TERRAFORM_VERSION="0.12.9"

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip >terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
  rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENTRYPOINT ["terraform"]
