# Step 1
FROM node:16-alpine as build-step

ARG REACT_APP_OPEN_CAGE_API_KEY
ARG REACT_APP_OPEN_WEATHER_API_KEY

RUN mkdir /app
WORKDIR /app

COPY package.json /app

RUN yarn install
COPY . /app

RUN export REACT_APP_OPEN_CAGE_API_KEY=${REACT_APP_OPEN_CAGE_API_KEY} \
    export REACT_APP_OPEN_WEATHER_API_KEY=${REACT_APP_OPEN_WEATHER_API_KEY} \
    && yarn run build

RUN mkdir -p build/react-weather-app/
RUN cp -R build/img build/react-weather-app/
RUN cp -R build/static build/react-weather-app/

# Stage 2
FROM nginx:1.20.1-alpine

RUN mkdir -p /usr/share/nginx/html/react-weather-app/
COPY --from=build-step /app/build /usr/share/nginx/html/react-weather-app/
