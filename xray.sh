#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2c5cab24-cf94-4d76-b00c-e5356efb86a3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

