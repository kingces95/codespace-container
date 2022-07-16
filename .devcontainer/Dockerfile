# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

ARG RELEASE_DIR
ARG RELEASE_SCOPE
ARG RELEASE_NAME
ARG RELEASE_TAG

ENV NIX_DOCKER_DIR=${RELEASE_DIR}
ENV NIX_RELEASE_SCOPE=${RELEASE_SCOPE}
ENV NIX_RELEASE_NAME=${RELEASE_NAME}
ENV NIX_DOCKER_TAG=${RELEASE_TAG}

ENV NIX_DOCKER_URL="https://github.com/${NIX_RELEASE_SCOPE}/${NIX_RELEASE_NAME}/archive/refs/tags"
RUN mkdir -p ${NIX_DOCKER_DIR}
RUN curl -SL ${NIX_DOCKER_URL}/${NIX_DOCKER_TAG}.tar.gz \
    | tar --strip-components=1 -C ${NIX_DOCKER_DIR} -xz ${NIX_RELEASE_NAME}-${NIX_DOCKER_TAG} 
RUN bash -c ". ${NIX_DOCKER_DIR}/shim.sh"
