#!/bin/bash
SUFFIX="-gc"
PROFILES_DIR="${GLOBAL_PROFILES:=$HOME/profiles/browsers}"

PROFILE_NAME=$1
PROFILE_PATH="${PROFILES_DIR}/${PROFILE_NAME}${SUFFIX}"

#echo $PROFILES_DIR
#echo $PROFILE_PATH
#echo $PROFILE_NAME

# if not exists ${PROFILE_PATH}
if [[ ! -e $PROFILE_PATH ]]; then
   mkdir -p $PROFILE_PATH
fi

# if passed file with urls
URLS=$2

google-chrome --user-data-dir="${PROFILE_PATH}" $URLS
