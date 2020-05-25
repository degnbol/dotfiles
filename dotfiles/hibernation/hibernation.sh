#!/usr/bin/env zsh

# run custom commands after hibernation or suspension
_ cp resume_custom.service /etc/systemd/system/
_ systemctl enable resume_custom


