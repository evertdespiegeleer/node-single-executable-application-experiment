# Node single executable application server experiment

This is a simple express based web server that builds to a single executable based on the node.js [SEA docs](https://nodejs.org/api/single-executable-applications.html).

## Install dependencies
```sh
npm ci
```

## Build
```sh
npm run build:bootstrap
```

## Run the resulting binary
It should expose a hello world page on port 3000.

```sh
./dist/bin/server
```