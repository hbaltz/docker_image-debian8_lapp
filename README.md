# Docker image: debian8_lapp

## Description

Rapsbian + apache2 + php5 + postgresql-client docker image with some customization:
* mod_rewrite apache2 module enabled
* DocumentRoot set to /var/www/public
* /etc/apt/sources.list modified to include jessie-updates and to use Polish mirror by default
* WORKDIR set to /var/www/
* ENTRYPOINT set to autostart apache2 service

## Usage

There are two main run-time settings that may need to be passed to newly created container from this image:
* Container provides HTTP service on port 80. If you want this port to be published on host interfaces add `-p 80:80` to your `docker run` statement
* There is no VOLUME statement in Dockerfile, so data volume must be attached when starting container by adding `-v <path_to_your_datadir>:/var/www/` to your `docker run` statement

## Example

To successfully start a new container using this image please specify port (here port 80) and volume options as in following example:
`docker run -dp 80:80 -v <path_to_your_datadir>:/var/www/ --name <your-app-name> ajbisoft/debian8-lapp`

## Summary

This docker image is best suited for PHP applications that depend on PostgreSQL database backend. It works well not only with simple PHP websites, but also with ie. Laravel framework (just mount your project under /var/www).
