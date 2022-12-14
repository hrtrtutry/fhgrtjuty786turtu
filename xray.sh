#!/bin/sh
if [ ! -f UUID ]; then
  UUID="dc009fad-0555-4faf-8bec-e94b40820b36"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

