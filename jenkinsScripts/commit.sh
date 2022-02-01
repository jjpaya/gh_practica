#!/bin/bash

git add README.md

if git commit -m "Pipeline ejecutada por ${1}. Motivo: ${2} [ci skip]"; then
  git push origin HEAD:jenkins
fi
