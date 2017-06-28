#!/usr/bin/env bash

function jv_pg_utils_openKioskBrowser() {
    local url="${1}"
    local message="${2}"

    jv_pg_utils_closeBrowser

    chromium-browser --kiosk "${url}" > /dev/null 2>&1 & disown
    echo $! > ${jv_pg_utils_browserLockFile}

    [[ ! -z ${message} ]] && say "${message}"
}

function jv_pg_utils_closeBrowser() {
    local noBrowserMessage="${1}"

    if [[ -e ${jv_pg_utils_browserLockFile} ]] && kill -0 $(cat ${jv_pg_utils_browserLockFile}) > /dev/null 2>&1
    then
        kill $(cat ${jv_pg_utils_browserLockFile})
    else
        [[ ! -z ${noBrowserMessage} ]] && say "${noBrowserMessage}"
    fi
}
