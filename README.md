# My Cru App

> Replace this with a sentence describing what your app does.

A Cru application that runs on AWS ECS.

## Getting started

This repo starts from Cru's ECS template and isn't tied to a language
yet. Pick one to begin:

```bash
bin/use-language nodejs   # or: ruby | python
```

That sets up a minimal web app (with a health check) you can build on. Then,
depending on the language you chose:

| Language | Install            | Run locally        |
| -------- | ------------------ | ------------------ |
| nodejs   | `npm install`      | `npm run dev`      |
| python   | `pip install -r requirements.txt` | `python app/main.py` |
| ruby     | `bundle install`   | `bundle exec puma` |

The app listens on `$PORT` (default `8080`) and answers `GET /health`.

## Deploying

Open a pull request off `main`, then add the **`On Staging`** label to deploy
to staging; merge to `main` to deploy to production. See
**[QUICK_START.md](./QUICK_START.md)** for provisioning (TerraBloks), the Cru
CLI, and enabling builds.

## For coding agents

See **[AGENTS.md](./AGENTS.md)** — it explains how this repo is wired and how to
work in it safely.
