# open vi and write :PlugInstall to install plugins
vi
# then complete the youcompleteme installation (here with c family and java support)
# there is an issue with youcompleteme not supporting python 3.7.
# You might also have to install with official python3:
/usr/bin/python3 ~/.config/nvim/plugged/youcompleteme/install.py --clangd-completer --java-completer

