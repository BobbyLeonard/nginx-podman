# nginx-podman
Nginx self signed SSL container 

<span style="font-family:courier"
podman build --tag my_nginx .

podman run --name mynginx1 -p 1443:443 -d my_nginx:latest</span>
