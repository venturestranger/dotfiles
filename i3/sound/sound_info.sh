#!/bin/sh

VOLUME="Aud"
VOLUME_MUTE="Muted"
SOUND_LEVEL=$(amixer -M get Master | awk -F"[][]" '/%/ { print $2 }' | awk -F"%" 'BEGIN{tot=0; i=0} {i++; tot+=$1} END{printf("%s\n", tot/i) }')
MUTED=$(amixer get Master | awk ' /%/{print ($NF=="[off]" ? 1 : 0); exit;}')

ICON=$VOLUME_MUTE
if [ "$MUTED" = "1" ]
then
    ICON="$VOLUME_MUTE"
else
	ICON="$VOLUME"
fi

echo "$ICON" "$SOUND_LEVEL" | awk '{ printf("%s:%4s%% \n", $1, $2) }'

