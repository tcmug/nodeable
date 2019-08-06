# HELLO WORLD

This is a simple node npm express application running in flatpak.

## Building and running

Use make to build and run the app.

To build:
```
$ make
```

To run:
```
$ make run
```
Find the app at http://localhost:3000

## Repositories

To install to a local repository (nodeable-repository):
```
$ make install
```

To run the installed flatpak:
```
$ make run-installed
```

To create a distributable bundle:
```
$ make bundle
```
This will produces a file called nodeable.flatpak.


