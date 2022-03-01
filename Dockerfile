FROM node:12 as base

WORKDIR /src
ADD . .

RUN NODE_ENV=production

RUN yarn install
RUN yarn build

FROM base as RUN

ENTRYPOINT ["yarn", "start"]

EXPOSE 1337