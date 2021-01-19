#!/bin/sh

cd minetest_game
git subtree split -P mods/$1 -b $1
pwd
git push https://${access_token}@github.com/minetest-game/$1 $1:master
