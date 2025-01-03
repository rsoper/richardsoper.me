external_url 'https://gitlab.richardsoper.me/'
pages_external_url 'https://pages.richardsoper.me/'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password')
gitlab_rails['gitlab_shell_ssh_port'] = 2424

gitlab_pages['enable'] = true
pages_nginx['enable'] = true
pages_nginx['listen_port'] = 8888
pages_nginx['listen_https'] = false
gitlab_pages['artifacts_server'] = true

nginx['listen_https'] = false
nginx['listen_port'] = 80

# SMTP Settings 
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.mail.me.com"
gitlab_rails['smtp_port'] = 587
gitlab_rails['smtp_authentication'] = "plain"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_user_name'] = File.read('/run/secrets/ICLOUD_USERNAME')
gitlab_rails['smtp_password'] = File.read('/run/secrets/ICLOUD_SMTP')
gitlab_rails['smtp_domain'] = "smtp.mail.me.com"
gitlab_rails['gitlab_email_from'] = 'noreply@richardsoper.me'
gitlab_rails['gitlab_email_reply_to'] = 'noreply@richardsoper.me'

# Registry
registry_nginx['enable'] = true
registry_nginx['listen_https'] = false
registry_nginx['listen_port'] = '5005'
registry_external_url 'https://registry.richardsoper.me'

# Monitoring 
prometheus_monitoring['enable'] = false
consul['enable'] = false

# Postgres DB
# Disable the built-in Postgres
postgresql['enable'] = false
# Fill in the connection details
gitlab_rails['db_adapter'] = 'postgresql'
gitlab_rails['db_encoding'] = 'utf8'
gitlab_rails['db_host'] = 'postgres-db.internal'
gitlab_rails['db_port'] = 5432
gitlab_rails['db_database'] = "gitlabhq_production"
gitlab_rails['db_username'] = 'gitlab'
gitlab_rails['db_password'] = File.read('/run/secrets/GITLAB_DB')