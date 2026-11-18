# poc-n8n

Proof of concept for
[How to Build Your First AI Automation Workflow with n8n](https://www.ardotconsulting.com/blog/2026/08/17/how-to-build-your-first-ai-automation-workflow-with-n8n/).

Live demo: <https://n8n.poc.ardotconsulting.com>

[n8n](https://n8n.io) is a workflow automation tool you can self-host. This
demo runs the official image on n8n's built-in SQLite: one container, no
external database.

## Run it yourself

```bash
docker build -t my-n8n .
docker run -p 5678:5678 -v n8n-data:/home/node/.n8n \
  -e N8N_ENCRYPTION_KEY="$(openssl rand -hex 32)" \
  -e N8N_HOST=localhost -e N8N_PROTOCOL=http -e WEBHOOK_URL=http://localhost:5678/ \
  -e N8N_SECURE_COOKIE=false my-n8n
```

Then open <http://localhost:5678> and create the owner account. Keep the
encryption key: it encrypts the credentials n8n stores.

Deployed by the [ardotconsulting/pocs](https://github.com/ardotconsulting/pocs)
stack; every push to `main` redeploys it.
