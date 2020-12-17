#!/bin/bash
SUFFIX="-ff"
PROFILES_DIR="${GLOBAL_PROFILES:=$HOME/profiles/browsers}"

PROFILE_NAME=$1
PROFILE_PATH="${PROFILES_DIR}/${PROFILE_NAME}${SUFFIX}"

#echo $PROFILES_DIR
#echo $PROFILE_PATH
#echo $PROFILE_NAME

# if not exists ${PROFILE_PATH}
if [[ ! -e $PROFILE_PATH ]]; then
   echo "No path, building a profile"
   firefox -no-remote -CreateProfile "${PROFILE_NAME} ${PROFILE_PATH}"
fi

# if passed file with urls
URLS=$2

firefox -no-remote -P "${PROFILE_NAME}" $URLS
