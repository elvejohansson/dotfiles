#!/bin/sh

cd plugins

PLUGINS=$(ls | tr '\n' ' ')
PLUGINS_COUNT=$(ls -d */ | wc -l | tr -d ' ')

echo "Starting update for ${PLUGINS_COUNT} plugins.\n"

for plugin in $PLUGINS
do
    git -C "${plugin}" pull --quiet
    echo "✓ ${plugin}"
done

