#!/usr/bin/env bash

if [[ "$(docker images -q hugo-asciidoctor-plantuml:Dockerfile 2>/dev/null)" ==  "" ]]; then
    docker build -t hugo-asciidoctor-plantuml:Dockerfile .
fi
if [ ! -r ./node_modules ]; then
    docker run --rm --volume $PWD:/src -w "/src" hugo-asciidoctor-plantuml:Dockerfile bash -c "npm ci"
fi
if [ ! -r ./public ]; then
    docker run --rm --volume $PWD:/src -w "/src" hugo-asciidoctor-plantuml:Dockerfile bash -c "hugo --minify -v --destination public"
fi
