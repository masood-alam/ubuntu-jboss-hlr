#!/bin/bash
docker rm ubuntu-jboss-hlr -f
#docker network rm mynet123
#docker network create --subnet=172.18.0.0/16 mynet123

# testing internally
#docker run  --name ubuntu-jboss-hlr -v /home/masood/docker/ubuntu-hlr/data:/opt/jboss-5.1.0.GA-networkside/server/default/data -v /home/masood/docker/ubuntu-hlr/data:/opt/jboss-5.1.0.GA-networkside/server/default/log -d ubuntu-jboss-hlr

docker run  --name ubuntu-jboss-hlr --net mynet123 --ip 172.18.0.2 -v /home/masood/ubuntu-jboss-hlr/data:/opt/jboss-5.1.0.GA/server/default/data -v /home/masood/ubuntu-jboss-hlr/data:/opt/jboss-5.1.0.GA/server/default/log -d ubuntu-jboss-hlr
#docker run -it --name ubuntu-jboss-hlr --network=host -p 3020:3020 -p 2905:2905 -p 8080:8080 -v /home/masood/docker/ubuntu-hlr/data:/opt/jboss-5.1.0.GA-networkside/server/default/data ubuntu-jboss-hlr
# for Ufone expansion test, gmlc runs on 10.120.10.125
#docker run --name ubuntu-jboss-hlr --network=host -v /home/masood/docker/ubuntu-hlr/data:/opt/jboss-5.1.0.GA-networkside/server/default/data -v /home/masood/docker/ubuntu-hlr/data:/opt/jboss-5.1.0.GA-networkside/server/default/log -d ubuntu-jboss-hlr




