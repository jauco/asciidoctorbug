#!/bin/sh

asciidoctor main.adoc

grep -q 'href=".*subfolder/some-file\.txt"' main.html || echo "no link to subfolder/some-file.txt found"
grep 'href=".*some-file\.txt"' main.html main.html || echo "an incorrect link to ./some-file.txt _was_ found"
