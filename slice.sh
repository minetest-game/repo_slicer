#!/bin/bash

git clone https://github.com/minetest/minetest_game
cd minetest_game

function split(){
	git subtree split -P mods/$1 -b $1
	git push https://${access_token}@github.com/minetest-game/$1 $1
}

split default
split beds
split dye
split xpanes
