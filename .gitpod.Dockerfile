FROM buildpack-deps:bionic

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# USER gitpod

RUN apt-get update && apt-get install -y python3-pip

RUN apt-get update && apt-get install -y libopenmpi-dev
# RUN git clone https://github.com/openai/spinningup.git && \
#     cd spinningup && \
#     pip install -e .
