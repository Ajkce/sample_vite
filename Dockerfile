FROM public.ecr.aws/docker/library/node:18-alpine as builder

WORKDIR '/app'

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

# FROM public.ecr.aws/docker/library/nginx
FROM public.ecr.aws/docker/library/ubuntu

COPY --from=builder /app/dist /usr/share/nginx/html

