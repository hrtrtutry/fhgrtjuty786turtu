#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ce2ed248-8d20-4c86-a6c8-2c56a0c27ccd"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

