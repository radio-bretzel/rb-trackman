FROM registry.radiobretzel.org/hosting/dockerfile-store/python:flask

WORKDIR /usr/src/rb-team

COPY . .

RUN pip install .

VOLUME /usr/src/rb-team /var/run/docker.sock
EXPOSE 5000

ENV RBTEAM_IS_CONTAINER True
CMD ["python", "-m", "rbteam"]
