FROM node:12 as base

WORKDIR /src
ADD . .

RUN yarn install
RUN yarn build:production

FROM base as RUN


ENTRYPOINT ["yarn", "start"]

EXPOSE 1337