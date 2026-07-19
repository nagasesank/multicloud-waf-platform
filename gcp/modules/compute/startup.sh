#!/bin/bash
set -euxo pipefail

export DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt-get install -y nginx

systemctl enable nginx
systemctl restart nginx

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
    <title>Enterprise Multi-Cloud WAF Platform</title>
</head>
<body style="font-family: Arial; text-align: center; margin-top: 80px;">
    <h1>Enterprise Multi-Cloud WAF Platform</h1>
    <h2>Google Cloud Platform</h2>
    <p>Phase G03 - Compute Engine</p>
</body>
</html>
HTML