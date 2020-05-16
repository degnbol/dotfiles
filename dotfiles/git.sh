# make ssh key for github credentials
ssh-keygen -o
# use ssh github address instead of https to save credentials. Can also be saved with https but it is safer with ssh.
# copy key and put in ssh settings for github and bitbucket
cat ~/.ssh/id_rsa.pub | xclip -sel clip

# if repo is already cloned with https then change from https to ssh using e.g. "git remote set-url origin git@github.com:degnbol/dotfiles.git"
# clone e.g. degnlib to a folder with
git clone git@bitbucket.org:Degnbol/degnlib.git


