#!/bin/sh

# Replace %SERVER_HOST_NAME%, %SSH_USERNAME% and %SERVER_TARGET_FOLDER% with your own

HOST='%SERVER_HOST_NAME%'
USER='%SSH_USERNAME%'
TARGETFOLDER='%SERVER_TARGET_FOLDER%'
SOURCEFOLDER='dist'

# Authenification
# Don't store passwords in plain text!

# Get password from OS X Keychain function
# Replace %ACCOUNT_NAME% with account name of Keychain item
# See `man security` for more info
get_pw () {
  security 2>&1 >/dev/null find-generic-password -ga "%ACCOUNT_NAME%" \
  | sed 's/password: "\(.*\)"/\1/'
}

# Leave $PASS blank to use SSH key-authenification in lftp
PASS='' 

# ...or uncomment this to get ssh password from OS X Keychain
# PASS=$(get_pw)
