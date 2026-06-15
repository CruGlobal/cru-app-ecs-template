# NODE_VERSION set by build.sh from .tool-versions
ARG NODE_VERSION=22
FROM public.ecr.aws/docker/library/node:${NODE_VERSION}-alpine

# DataDog logs source
LABEL com.datadoghq.ad.logs='[{"source": "nodejs"}]'

# Upgrade alpine packages (useful for security fixes)
RUN apk upgrade --no-cache

WORKDIR /app

# Install dependencies first so this layer caches between code changes.
COPY package*.json ./
# No lockfile yet in a fresh template, so `npm install`. Once you commit a
# package-lock.json, switch this to `npm ci` for reproducible builds.
RUN npm install

# Build the TypeScript app to dist/
COPY . .
RUN npm run build

ENV NODE_ENV=production

# The app listens on $PORT (default 8080); the ECS target group routes to it.
EXPOSE 8080
CMD ["node", "dist/index.js"]
