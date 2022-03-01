FROM node:12 as base

WORKDIR /src
ADD . .

RUN yarn install
RUN NODE_ENV=production yarn build

FROM base as RUN

ENTRYPOINT ["yarn", "start"]

EXPOSE 1337