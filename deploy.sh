#!/bin/sh

cd "$(dirname "$0")"

source deploy-access.sh

lftp -e "mirror --reverse --delete --verbose --parallel=15 $SOURCEFOLDER $TARGETFOLDER
bye" "sftp://$USER:$PASS@$HOST"
