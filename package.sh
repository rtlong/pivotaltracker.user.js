#!/usr/bin/env bash


cat header.js > pivotaltracker.user.js
echo -e "\n\n" >> pivotaltracker.user.js
cat zepto.js >> pivotaltracker.user.js
echo -e "\n\n" >> pivotaltracker.user.js
coffee -cbp pivotaltracker.coffee >> pivotaltracker.user.js
echo 'wrote to pivotaltracker.user.js'
