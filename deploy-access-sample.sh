#!/bin/sh

# Get password from OS X Keychain function
# Replace %ACCOUNT_NAME% with account name of Keychain item
# See `man security` for more info
get_pw () {
  security 2>&1 >/dev/null find-generic-password -ga "%ACCOUNT_NAME%" \
  | sed 's/password: "\(.*\)"/\1/'
}

# Replace %SERVER_HOST_NAME%, %SSH_USERNAME% and %SERVER_TARGET_FOLDER% with your own

HOST='%SERVER_HOST_NAME%'
USER='%SSH_USERNAME%'

# Don't store server credentials in plain text!
PASS=$(get_pw)

TARGETFOLDER='%SERVER_TARGET_FOLDER%'
SOURCEFOLDER='dist'