#!/bin/bash

git config user.name 'jjpaya (jenkins)'
git config user.email 'jjpaya@users.noreply.github.com'
git remote set-url origin "https://${1}@github.com/jjpaya/gh_practica.git"
