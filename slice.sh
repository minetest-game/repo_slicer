#!/bin/bash
echo ${access_token} | md5sum -
export
cd minetest_game
git branch
ls -lha
git subtree split -P mods/$1 -b $1
git push "https://BuckarooBanzay:${access_token}@github.com/minetest-game/default.git" default:master
