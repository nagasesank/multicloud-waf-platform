#!/bin/bash

dnf update -y

dnf install -y nginx

systemctl enable nginx

systemctl start nginx

TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" \
-H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

INSTANCE_ID=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" \
http://169.254.169.254/latest/meta-data/instance-id)

HOSTNAME=$(hostname)

AZ=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" \
http://169.254.169.254/latest/meta-data/placement/availability-zone)

PRIVATE_IP=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" \
http://169.254.169.254/latest/meta-data/local-ipv4)

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
<title>Enterprise Multi-Cloud WAF Platform</title>

<style>
body{
font-family:Arial,Helvetica,sans-serif;
background:#0f172a;
color:white;
text-align:center;
padding-top:60px;
}

.card{
width:700px;
margin:auto;
background:#1e293b;
padding:30px;
border-radius:12px;
}

h1{
color:#38bdf8;
}

table{
width:100%;
margin-top:20px;
border-collapse:collapse;
}

td{
padding:12px;
border:1px solid #475569;
}
</style>

</head>

<body>

<div class="card">

<h1>Enterprise Multi-Cloud Web Application Firewall Evaluation Platform</h1>

<h2>AWS Demo Server</h2>

<table>

<tr>
<td><b>Hostname</b></td>
<td>$HOSTNAME</td>
</tr>

<tr>
<td><b>Instance ID</b></td>
<td>$INSTANCE_ID</td>
</tr>

<tr>
<td><b>Availability Zone</b></td>
<td>$AZ</td>
</tr>

<tr>
<td><b>Private IP</b></td>
<td>$PRIVATE_IP</td>
</tr>

<tr>
<td><b>Status</b></td>
<td>Running Successfully</td>
</tr>

</table>

</div>

</body>
</html>
EOF

systemctl restart nginx