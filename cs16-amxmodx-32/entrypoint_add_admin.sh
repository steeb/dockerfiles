#!/usr/bin/env bash

if [[ ! -z ${ADMIN_ID} ]]; then
	echo "\"${ADMIN_ID}\" \"\" \"abcdefghijklmnopqrstu\" \"ce\"" > cstrike/addons/amxmodx/configs/users.ini
fi

PARAMS=$@
exec ./hlds_run -game cstrike ${PARAMS:="sv_lan 1 +map de_dust"}
