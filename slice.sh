#!/bin/bash
GITHUB_REPO_URL=https://git:${access_token}@github.com/minetest-game/${1}

cd minetest_game
git subtree split -P mods/$1 -b $1
git push "${GITHUB_REPO_URL}" $1:master
