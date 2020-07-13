FROM gitpod/workspace-full-vnc:branch-master

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN sudo apt-get update && sudo apt-get install -y libopenmpi-dev
RUN git clone https://github.com/openai/spinningup.git && \
    cd spinningup && \
    pip install -e .
