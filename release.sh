#!/bin/bash -x

# extract version from args
export VERSION=$1
if [ "$VERSION" = "" ]
then
  echo "A version must be specified"
  exit 1
fi

# run images
if docker stack ls --format "{{.Name}}" | grep scn-design-22 | grep blue
then
  OLDCOLOR=blue
  export NEWCOLOR=green
else
  OLDCOLOR=green
  export NEWCOLOR=blue
fi
docker stack deploy -c docker-stack.yml scn-design-22-${NEWCOLOR}

# wait for images to be handled by Traefik
sleep 60

# Increase newer version Traefik priority
docker service update --label-add "traefik.http.routers.scn-design-22-${NEWCOLOR}.priority=1000" scn-design-22-${NEWCOLOR}_ui

# wait for updates to be handled by Traefik
sleep 60

# destroy old version
docker stack rm scn-design-22-${OLDCOLOR}

# Restore default Traefik priority
docker service update --label-add "traefik.http.routers.scn-design-22-${NEWCOLOR}.priority=100" scn-design-22-${NEWCOLOR}_ui
