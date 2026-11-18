# n8n on its built-in SQLite (pocs#21). Data, including the owner account, lives
# on the persistent volume at /home/node/.n8n. N8N_ENCRYPTION_KEY is set at
# runtime by OpenTofu (generated_secrets); never put it here.
FROM n8nio/n8n:2.46.4

ENV N8N_HOST=n8n.poc.ardotconsulting.com \
    N8N_PORT=5678 \
    N8N_PROTOCOL=https \
    WEBHOOK_URL=https://n8n.poc.ardotconsulting.com/ \
    N8N_DIAGNOSTICS_ENABLED=false \
    N8N_PERSONALIZATION_ENABLED=false

EXPOSE 5678
