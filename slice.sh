#!/bin/bash
GITHUB_REPO_URL=https://${access_token}@github.com/minetest-game/${1}

cd minetest_game
git subtree split -P mods/$1 -b $1
git remote add $1 "${GITHUB_REPO_URL}"
git push $1 $1:master
