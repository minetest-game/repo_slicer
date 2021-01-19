#!/bin/bash
GITHUB_REPO_URL=https://BuckarooBanzay:${access_token}@github.com/minetest-game/${1}.git

cd minetest_game
git subtree split -P mods/$1 -b $1
git push "${GITHUB_REPO_URL}" $1:master
