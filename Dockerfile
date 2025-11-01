FROM ubuntu:latest

# RUN python3 -m venv /opt/venv
# ENV PATH="/opt/venv/bin:$PATH"

RUN apt-get update && apt-get install -y \    
   python3.10 \
   python3-pip \
   git
    
RUN pip3 install 
# --break-system-packages PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /usr/bin/feed.py
# RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
