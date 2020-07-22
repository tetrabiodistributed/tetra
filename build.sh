#!/usr/bin/env bash

if [[ "$(docker images -q capsulecorplab/hugo-asciidoctor-plantuml 2>/dev/null)" ==  "" ]]; then
    docker build -t capsulecorplab/hugo-asciidoctor-plantuml .
fi
if [ ! -r ./node_modules ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml bash -c "npm ci"
fi
if [ ! -r ./public ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml bash -c "hugo --minify -v --destination public"
fi
