#!/bin/bash
cd luanti
git subtree split -P games/devtest -b devtest
git push "https://x-access-token:${access_token}@github.com/minetest-game/devtest.git" devtest:master
