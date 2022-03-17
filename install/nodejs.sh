#!/usr/bin/env bash

## Node.js模组 Node.js moudle

install_nodejs(){
	set +e
if [[ ${dist} == debian ]]; then
  curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
 elif [[ ${dist} == ubuntu ]]; then
  curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
 else
  echo "fail"
fi
apt-get update
apt-get install -y nodejs
}
