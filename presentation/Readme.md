# Per generar la presentació en format html:

## Executar en aquest directori:

```
pandoc -t html5 --template=template-revealjs.html \
    --standalone --section-divs \
  --variable theme="league" \
  --variable transition="linear" \
  presentation.md -o presentation.html
```

