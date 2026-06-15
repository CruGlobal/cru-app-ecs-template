# PYTHON_VERSION set by build.sh from .tool-versions
ARG PYTHON_VERSION=3.12
FROM public.ecr.aws/docker/library/python:${PYTHON_VERSION}-slim

# DataDog logs source
LABEL com.datadoghq.ad.logs='[{"source": "python"}]'

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Install dependencies first so this layer caches between code changes.
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# The app listens on $PORT (default 8080); gunicorn binds there and serves
# the `app` object in app/main.py. The ECS target group routes to this port.
EXPOSE 8080
CMD ["sh", "-c", "gunicorn --bind 0.0.0.0:${PORT:-8080} app.main:app"]
