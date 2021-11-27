external_url 'https://gitlab.richardsoper.me/'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password')

nginx['listen_https'] = false
nginx['listen_port'] = 80

# SMTP Settings 
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.zoho.com"
gitlab_rails['smtp_port'] = 587
gitlab_rails['smtp_authentication'] = "plain"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_user_name'] = "noreply@richardsoper.me"
gitlab_rails['smtp_password'] = File.read('/run/secrets/AUTHELIA_SMTP')
gitlab_rails['smtp_domain'] = "smtp.zoho.com"
gitlab_rails['gitlab_email_from'] = 'noreply@richardsoper.me'
gitlab_rails['gitlab_email_reply_to'] = 'noreply@richardsoper.me'

# Registry
registry_nginx['enable'] = true
registry_nginx['listen_port'] = '5005'
registry_external_url 'https://registry.richardsoper.me'