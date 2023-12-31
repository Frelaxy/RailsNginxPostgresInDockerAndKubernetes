#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec bin/rails db:create

bundle exec bin/rails db:migrate

bundle exec bin/rails s -b 0.0.0.0
