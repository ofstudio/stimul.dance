#!/bin/sh

cd "$(dirname "$0")"

# see deploy-access-sample.sh
source deploy-access.sh

lftp -e "mirror --reverse --delete --verbose --parallel=15 $SOURCEFOLDER $TARGETFOLDER
bye" "sftp://$USER:$PASS@$HOST"
