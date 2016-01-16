install.packages("drat")

# Load
library("drat")

# Initialize a repo
initRepo(name     = "datarepo", # Name of repository
         basepath = "~/GitHub") # Location of repo on local file system


# Store the basepath + name
options("dratRepo" = "~/GitHub/datarepo")


# 
# ... 
# ...
# ... 
#

insertPackage("~/GitHub/imudata_0.1.1.zip",    # Binary 
              repodir = "~/GitHub/datarepo",   # Location of git repo to commit to
              action="prune",                  # Remove old version
              commit = T)                      # Commit to repo

insertPackage("~/GitHub/imudata_0.1.1.tar.gz", # Package source
              repodir = "~/GitHub/datarepo",   # Location of git repo to commit to
              action="prune",                  # Remove old version in repo
              commit = T)                      # Commit to repo

# (Optional) Remove old packages from repo
# pruneRepo()

# Data repository
addRepo("SMAC-Group", "http://smac-group.com/datarepo")

install.packages("imudata")