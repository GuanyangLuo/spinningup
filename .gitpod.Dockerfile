FROM gitpod/workspace-full-vnc

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN sudo apt-get update && sudo apt-get install libopenmpi-dev
RUN pwd && \
    cd /home/gitpod && \
    git clone https://github.com/openai/spinningup.git && \
    cd spinningup && \
    pip install -e .