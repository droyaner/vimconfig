# configVim

# usage of git submodule
# source: http://stackoverflow.com/questions/1811730/how-do-i-work-with-a-git-repository-within-another-repository
Say you have repository PROJECT1, PROJECT2, and MEDIA...

cd /path/to/PROJECT1
git submodule add ssh://path.to.repo/MEDIA
git commit -m "Added Media submodule"
Repeat on the other repo...

Now, the cool thing is, that any time you commit changes to MEDIA, you can do this:

cd /path/to/PROJECT2/MEDIA
git pull
cd ..
git add MEDIA
git commit -m "Upgraded media to version XYZ"
This just recorded the fact that the MEDIA submodule WITHIN PROJECT2 is now at version XYZ.
