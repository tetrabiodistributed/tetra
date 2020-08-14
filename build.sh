#!/usr/bin/env bash

if [ ! -r ./node_modules ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml bash -c "npm ci"
fi
if [ ! -r ./public ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml bash -c "hugo --minify -v --destination public"
fi
