Execute the following command to install everything through Ansible

`curl -L bit.ly/cydo-provision | sudo sh`

After the restart, you can launch the Docker proxy using:

`docker run -d -p 80:80 --name=proxy --restart=always -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy && docker network create proxy && docker network connect proxy proxy`

