#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

# Do some changes ...

user=${user:-vagrant}

# dotfiles

su - ${user} -c "bash -ex" <<'EOS'
  curl -fSkL https://raw.githubusercontent.com/hansode/env-bootstrap/master/build-personal-env.sh | bash
EOS

#

su - ${user} -c "bash -ex" <<'EOS'
  if ! [[ -d gh-issues-gantt ]]; then
    git clone https://github.com/neyric/gh-issues-gantt.git
  fi
  cd gh-issues-gantt
  git pull
EOS

su - ${user} -c "bash -ex" <<'EOS'
  cd gh-issues-gantt
  npm install

  if ! [[ -f config.js ]]; then
    cp -p config.example.js config.js
  fi
  if ! [[ -f public/config.js ]]; then
    cp -p public/config.example.js public/config.js
  fi
EOS
