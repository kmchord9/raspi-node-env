FROM balenalib/raspberrypi3-debian-node:10.10-stretch-build as node
FROM balenalib/raspberrypi3-debian-python:3.6.10-stretch-build

COPY --from=node /opt/yarn /opt/yarn
COPY --from=node /usr/local/bin/node /usr/local/bin/

RUN ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \
  && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg