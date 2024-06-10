handfontgen: Handwriting Font Generator
====

専用のフォームに書いた手書き文字をフォントに変換する。

Generate a font by converting from characters written on a special form.

## 説明
http://nixeneko.hatenablog.com/entry/2016/02/06/114348

## Getting Started

```bash
docker compose up -d
docker compose exec handfontgen /bin/bash

# execute below on a shell in the container...
source ./venv/bin/activate

python handfontgen/formgen.py -o ./output/zenkaku.pdf ...  # generate a form

python handfontgen/fontgen.py font.otf ./input/scanned_forms/ # generate a font from scanned forms
```

## Licence

MIT License (Copyright 2016 nixeneko)

## Author

[nixeneko](https://github.com/nixeneko), patched by jiftechnify