#!/usr/bin/env bash

set -o errexit
set -o nounset

docker-compose exec -T mongodb bash -c 'cd /data/db/dump; rm -f directheroes.tar.gz; mongodump --out=/data/db/dump --db directheroes; tar pczf directheroes.tar.gz directheroes'

