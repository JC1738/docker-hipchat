#!/bin/sh -x

#
# main entry point to run s3cmd
#

#
# Check for required parameters
#

if [ -z "${token}" ]; then
    echo "ERROR: token not set."
    exit 1
fi

if [ -z "${message}" ]; then
    echo "ERROR: message not set."
    exit 1
fi

if [ -z "${room_id}" ]; then
    echo "ERROR: room id not set."
    exit 1
fi

if [ -z "${sender}" ]; then
    echo "ERROR: sender not set."
    exit 1
fi

if [ -z "${color}" ]; then
    echo "ERROR: color not set."
    exit 1
fi


echo "All parameters have been provided..."

echo "Starting hipchat message"


#MESSAGE="Some crazy unescaped message with <a href=\"http://somewhere.com\">links</a> & stuff! Maybe even variables or commit messages: ${COMMIT_MESSAGE}"
#CONFIG="room_id=someroom&from=Jim&color=yellow"
#curl -d $CONFIG --data-urlencode "message=${MESSAGE}" 'https://api.hipchat.com/v1/rooms/message?auth_token=someapitoken&format=json'

CONFIG="room_id=${room_id}&from=${sender}&color=${color}"

curl -d $CONFIG --data-urlencode "message=${message}" "https://api.hipchat.com/v1/rooms/message?auth_token=${token}&format=json"


#
# Finished operations
#
echo "Finished message send"
