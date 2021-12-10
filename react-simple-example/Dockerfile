#
# docker build -t pocdxp/react-simple-example .
#
# docker run -it --name react-simple-example -p 9090:80 --rm pocdxp/react-simple-example sh
# docker run --name react-simple-example -e REACT_APP_OPEN_WEATHER_API_KEY=7cfde33517ca4a6cb8b5e32bb863b406 -p 9090:80 --rm pocdxp/react-simple-example
#
# Step 1
# FROM node:16-alpine as build-step

# RUN mkdir /app
# WORKDIR /app

# COPY package.json /app

# RUN yarn install
# COPY . /app
# RUN yarn run build
# RUN mkdir -p build/react-simple-example/
# RUN cp -R build/static build/react-simple-example/
# RUN cp -R build/logo192.png build/react-simple-example/
# RUN cp -R build/logo512.png build/react-simple-example/

# # Stage 2
# FROM nginx:1.20.1-alpine

# RUN mkdir -p /usr/share/nginx/html/react-simple-example/
# COPY --from=build-step /app/build /usr/share/nginx/html/react-simple-example/

FROM nginx:1.20.1-alpine

RUN mkdir -p /usr/share/nginx/html/react-simple-example/
COPY dist/ /usr/share/nginx/html/react-simple-example/
