#!/bin/bash

mutagen daemon start
mutagen-compose build app
mutagen-compose stop app || true
mutagen-compose up app