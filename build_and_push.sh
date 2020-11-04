#! /bin/bash

docker rmi docker.io/clikex/rails_pg:$1
docker build --build-arg RUBY_VERSION=$1 -t clikex/rails_pg:$1 .
docker push docker.io/clikex/rails_pg:$1