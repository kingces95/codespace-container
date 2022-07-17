# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG NIX_SHIM_VARIANT
ARG NIX_SHIM_IMAGE
FROM ${NIX_SHIM_IMAGE}-${NIX_SHIM_VARIANT}

# ARG NIX_SHIM_VARIANT
# ARG NIX_SHIM_IMAGE

# ENV NIX_SHIM_VARIANT=${NIX_SHIM_VARIANT}
# ENV NIX_SHIM_IMAGE=${NIX_SHIM_IMAGE}
# ENV NIX_SHIM_CREATION_LOG="/workspaces/.codespaces/.persistedshare/creation.log"

# # [Optional] Uncomment this section to install additional OS packages.
# ARG NIX_SHIM_TOOLS
# ENV NIX_SHIM_TOOLS=${NIX_SHIM_TOOLS}
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends ${NIX_SHIM_TOOLS}

# ARG NIX_USER
# ARG NIX_SHIM_DIR
# ARG NIX_SHIM_DIR_REPO
# ARG NIX_SHIM_GITHUB_SCOPE
# ARG NIX_SHIM_GITHUB_NAME
# ARG NIX_SHIM_GITHUB_TAG

# USER ${NIX_USER}
# ENV NIX_SHIM_DIR=${NIX_SHIM_DIR}
# ENV NIX_SHIM_DIR_REPO=${NIX_SHIM_DIR_REPO}
# ENV NIX_SHIM_GITHUB_SCOPE=${NIX_SHIM_GITHUB_SCOPE}
# ENV NIX_SHIM_GITHUB_NAME=${NIX_SHIM_GITHUB_NAME}
# ENV NIX_SHIM_GITHUB_TAG=${NIX_SHIM_GITHUB_TAG}

# ENV NIX_SHIM_GITHUB_URL="https://github.com/${NIX_SHIM_GITHUB_SCOPE}/${NIX_SHIM_GITHUB_NAME}/archive/refs/tags"
# ENV NIX_SHIM_DIR_REPO="/home/${NIX_USER}/shim"
# RUN mkdir -p ${NIX_SHIM_DIR_REPO}
# RUN curl -SL ${NIX_SHIM_GITHUB_URL}/${NIX_SHIM_GITHUB_TAG}.tar.gz \
#     | tar \
#         --strip-components=1 \
#         -C ${NIX_SHIM_DIR_REPO} \
#         -xz ${NIX_SHIM_GITHUB_NAME}-${NIX_SHIM_GITHUB_TAG} 
# # RUN bash -c ". ${NIX_SHIM_DIR_REPO}/shim.sh"

# USER root
