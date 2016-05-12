<<<<<<< HEAD
sudo -s
apt-get update
apt-get install git

# In your home directory on R
git clone https://github.com/HanjoStudy/HanjoStudy.github.io
cd HanjoStudy.github.io

# Before you start working:
git pull origin master
git status

# save .Rmd file here:
~/HanjoStudy.github.io/_rmd

# In R
setwd("~/HanjoStudy.github.io")
source("Scripts/Blog_automation.R")
PostBlog("File_name.Rmd", img = "optional_image.jpg", subtitle = "Optional subtitle")

# In putty or cmd
cd ~/HanjoStudy.github.io

# each user will have to do this once
git config --global user.email "gayle@eighty20.co.za"
git config --global user.name "Gayle"

git status
git add --all
git commit -m "Commit Message"
git push -u origin master
#username: hanjostudy
#password: ******
git status

# to fix a conflict
git mergetool
# This gets you to vimdiff
# ctrl +ww moves to different windows
# move your curser to the conflict area in the bottom window, type
:diffget RE #to keep remote version
:diffget LO #to keep local version
:diffget BA #to keep base version
# Once resolved all conflicts:
:wqa # to save all files
=======
sudo -s
cd /t-drive/Internal/Stats_team
apt-get update
apt-get install git

# In your home directoyr on R
git clone https://github.com/HanjoStudy/HanjoStudy.github.io
cd HanjoStudy.github.io

# Before you start working:
git pull origin master
git status

# save .Rmd file here:
~/HanjoStudy.github.io/_rmd

# In R
setwd("~/HanjoStudy.github.io")
source("Scripts/Blog_automation.R")
PostBlog("File_name.Rmd", img = "optional_image.jpg", subtitle = "Optional subtitle")

# In putty or cmd
cd ~/t-drive/Internal/Stats_team/HanjoStudy.github.io

# each user will have to do this once
git config --global user.email "gayle@eighty20.co.za"
git config --global user.name "Gayle"

git status
git add --all
git commit -m "Commit Message"
git push -u origin master
#username: hanjostudy
#password: Bl0g2016
git status

# to fix a conflict
git mergetool
# This gets you to vimdiff
# ctrl +ww moves to different windows
# move your curser to the conflict area in the bottom window, type
:diffget RE #to keep remote version
:diffget LO #to keep local version
:diffget BA #to keep base version
# Once resolved all conflicts:
:wqa # to save all files
>>>>>>> 68bf7991b409f59be243b0855bdc0dc4390f773a
git commit -m "Resolve Message"
