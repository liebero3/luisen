#!/bin/bash
echo "Processing png"
find . -name "*.png" -print0 | xargs -0 -n 1 -P 0 -I '{}' cwebp '{}' -short -q 90 -alpha_q 100 -m 6 -o '{}'

echo "Processing PNG"
find . -name "*.PNG" -print0 | xargs -0 -n 1 -P 0 -I '{}' cwebp '{}' -short -q 90 -alpha_q 100 -m 6 -o '{}'

echo "Processing jpg"
find . -name "*.jpg" -print0 | xargs -0 -n 1 -P 0 -I '{}' cwebp -short -q 80 '{}' -o '{}'

echo "Processing JPG"
find . -name "*.JPG" -print0 | xargs -0 -n 1 -P 0 -I '{}' cwebp -short -q 80 '{}' -o '{}'

echo "Processing jpeg"
find . -name "*.jpeg" -print0 | xargs -0 -n 1 -P 0 -I '{}' cwebp -short -q 80 '{}' -o '{}'

echo "Processing JPEG"
find . -name "*.JPEG" -print0 | xargs -0 -n 1 -P 0 -I '{}' cwebp -short -q 80 '{}' -o '{}'