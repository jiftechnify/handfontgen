FROM python:3.12.3-bookworm

SHELL ["/bin/bash", "-c"]

RUN apt update && apt upgrade -y && apt install -y libopencv-dev zbar-tools potrace fontforge fonts-noto-cjk && rm -rf /var/lib/apt/lists/*

WORKDIR /work
COPY . .
RUN python3 -m venv ./venv
RUN source ./venv/bin/activate && pip install -r requirements.txt

CMD ["/bin/bash"]
