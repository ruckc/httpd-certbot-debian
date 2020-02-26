# httpd-certbot container

I prefer Apache HTTPD over NGINX due to familiararity and it's never let me down.  I wanted a reusable container that automatically manages it's lets encrypt certificate so i can quickly spin up a site for some random project.

In short, copy .env-sample to .env and modify for your site.  Modify httpd.conf for any ProxyPass entries, or volume mount your static content at /var/www/html.  Once you are sure your plumbing is working, comment out the OPTIONS line to enable using the production Let's Encrypt server.

Both a Dockerfile and simple docker-compose.yml are provided.

Good luck
