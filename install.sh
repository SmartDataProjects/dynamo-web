#!/bin/bash
#---------------------------------------------------------------------------------------------------
# Install the dynamo web site.
#---------------------------------------------------------------------------------------------------

# global setup
[ -z "$DYNAMO_WEB_SERVER" ] && export DYNAMO_WEB_SERVER=paushaus.dyndns.org
[ -z "$DYNAMO_WEB_BASE" ]   && export DYNAMO_WEB_BASE=/var/www/html
[ -z "$DYNAMO_WEB_NAME" ]   && export DYNAMO_WEB_NAME=dynamo-web

# install all relevant tools
echo " RSYNC: rsync -Cavz ./ $DYNAMO_WEB_SERVER:$DYNAMO_WEB_BASE/$DYNAMO_WEB_NAME >& /tmp/rsync.log"
              rsync -Cavz ./ $DYNAMO_WEB_SERVER:$DYNAMO_WEB_BASE/$DYNAMO_WEB_NAME >& /tmp/rsync.log
mv /tmp/rsync.log /tmp/rsync-dynamo-web.log

# cleanup?

# restart server?

exit 0
