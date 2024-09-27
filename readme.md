# Containers

## Dir structure

rationale for splitting configs and volumes like this:
- easier to back up configs without accidentally backing up a boatload of data. I wanted to be able to back up configs and volumes separately

containers has:
- makefile
- .env
- configs/
- volumes/
- .gitignore

configs and volumes are mirrored. 
Each application has its own config directory and volume directory

#NOTE: .gitignore ignores volumes and .env for safety and avoiding pushing tons of data

## Makefile

because the docker compose command is getting obnoxious passing in
the env file, passing the appropriate compose file, etc.

use it like:
`make APPLICATION-up`
`make APPLICATION-down`
`make APPLICATION-restart`

down and restart aren't implemented yet

## Traefik

Traefik is the reverse proxy that helps me expose applications to WAN

quirks:
in the labels of compose files, service goes:
"servicename-containername" and all underscores are translated to dashes.
Don't ask me, but if you don't do this, traefik throws a fit.

## Basic Auth Passwords

'sudo apt install apache2-utils'
use htpasswd
