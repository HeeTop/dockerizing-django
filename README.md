# dockerizing-django

### install Docker in Ubuntu [#link](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

```
$ sudo apt-get -y update
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
$ sudo usermod -aG docker $USER
$ sudo systemctl restart docker

# 재접속 후
# Test
$ sudo docker run hello-world
$ sudo docker --version
```

### install Docker Compose in Ubuntu[#link](https://docs.docker.com/compose/install/)

```
$ sudo curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#Test
$ docker-compose --version
>> docker-compose version 1.25.4, build 1110ad01
```

### Docker Compose CLI

#### UP

```
$ docker-compose up -d --build # build & up & background
$ docker-compose -f docker-compose.prod.yml up -d --build # prod file build & up & background
```

#### DOWN

```
$ docker-compose down # delete container
$ docker-compose down -v # delete container & volumes
```

#### EXEC

```
$ docker-compose exec web python manage.py migrate # exec cmd
$ docker-compose -f docker-compose.prod.yml exec web python manage.py migrate
```

#### PS

```
$ docker ps
$ docker-compose ps
```

