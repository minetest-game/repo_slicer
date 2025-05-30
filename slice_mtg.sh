#!/bin/bash
cd minetest_game
git subtree split -P mods/$1 -b $1
git push "https://x-access-token:${access_token}@github.com/minetest-game/${1}.git" ${1}:master
