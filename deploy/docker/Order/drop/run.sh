#!/bin/bash

while ! curl http://mongo:27017/
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - MongoDB server is successfully connected"

java -jar ordering-*.jar
