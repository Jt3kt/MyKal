#!/bin/bash
git config --global user.name "Jtekt"
git config --global user.email github.jtekt@gmail.com
git remote remove origin
git remote add origin git@github.com:Jtekt/MyKal.git
git push --set-upstream origin master
