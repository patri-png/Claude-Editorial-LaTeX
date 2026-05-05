# Contribuir

Gracias por mejorar **Claude Editorial LaTeX**. El objetivo del repositorio
es mantener una clase LaTeX editorial limpia, reutilizable y de dominio
público para documentos técnicos. Las contribuciones que respeten ese
objetivo son bienvenidas.

## Reglas generales

- **No incluyas contenido privado.** Sin clientes, planificación real,
  rutas locales (`C:\Users\…`), capturas internas ni datos reales.
- **Mantén los ejemplos ficticios y genéricos.** Lorem ipsum o texto
  neutro está siempre bien.
- **Macros públicas con prefijo `Claude`.** Las macros internas pueden
  llevar prefijo `\@Claude…` o vivir bajo `\makeatletter`.
- **Documenta cada familia nueva** en
  [`docs/COMPONENTS.md`](docs/COMPONENTS.md). Si añades una caja
  semántica, una métrica o un diagrama, debe figurar en el inventario.
- **Cambios visuales → tokens.** Si el cambio afecta a paleta o
  tipografía, actualiza también
  [`tokens/claude-editorial.css`](tokens/claude-editorial.css) y
  [`docs/DESIGN_NOTES.md`](docs/DESIGN_NOTES.md).
- **Justifica las dependencias nuevas.** Si añades un paquete LaTeX,
  explica en el commit por qué no se puede resolver con lo ya
  disponible.
- **Sin paquetes vendorizados.** Si te inspiras en un paquete con
  licencia restrictiva (LPPL, etc.), traduce la idea a macros propias
  bajo dominio público y documéntalo en
  [`docs/REFERENCE_MAP.md`](docs/REFERENCE_MAP.md).

## Flujo de trabajo sugerido

1. Crea una rama desde `main`:
   ```bash
   git checkout -b feat/nombre-corto
   ```
2. Implementa el cambio en `claudeeditorial.cls` y, si aplica, en los
   ejemplos.
3. Compila los siete documentos y verifica que no haya errores nuevos
   ni warnings nuevos:
   ```bash
   latexmk main.tex
   xelatex -output-directory=build template.tex
   xelatex -output-directory=build examples/showcase.tex
   xelatex -output-directory=build examples/project-daybook.tex
   xelatex -output-directory=build examples/technical-showcase.tex
   xelatex -output-directory=build examples/lorem-all-cases.tex
   xelatex -output-directory=build standalone-template.tex
   ```
   En PowerShell:
   ```powershell
   .\scripts\build.ps1 main.tex
   .\scripts\build.ps1 template.tex
   .\scripts\build.ps1 examples\showcase.tex
   .\scripts\build.ps1 examples\project-daybook.tex
   .\scripts\build.ps1 examples\technical-showcase.tex
   .\scripts\build.ps1 examples\lorem-all-cases.tex
   .\scripts\build.ps1 standalone-template.tex
   ```
4. Si el cambio es visible en el PDF, regenera la galería:
   ```bash
   # PDFs
   cp build/*.pdf docs/preview/pdf/

   # PNGs (primera capa de cada documento)
   for pdf in docs/preview/pdf/*.pdf; do
     name=$(basename "$pdf" .pdf)
     pdftoppm -png -r 130 -f 1 -l 4 "$pdf" "docs/preview/images/$name"
   done
   ```
5. Actualiza [`CHANGELOG.md`](CHANGELOG.md) bajo la sección
   `## [Unreleased]` (o crea la entrada nueva).
6. Abre un PR con descripción clara: qué cambia, por qué, y qué prueba.

## Convenciones de commit

[Conventional commits](https://www.conventionalcommits.org/):

| Prefijo | Cuándo |
|---|---|
| `feat:` | Nueva macro, entorno o ejemplo. |
| `fix:` | Corrección de un bug de compilación o visual. |
| `refactor:` | Reorganización interna sin cambio de API. |
| `docs:` | Cambios solo en `docs/`, README o CHANGELOG. |
| `style:` | Ajustes de paleta, tipografía o espaciado. |
| `test:` | Añadir o ampliar ejemplos que validan funcionalidad. |
| `chore:` | Build, scripts, `.gitignore`, infraestructura. |

## Validación local antes de publicar

Verifica que no hay rutas o contenido privado:

```powershell
# Windows / PowerShell
git status --short
Select-String -Path .\* -Pattern "cliente|planificacion|C:\\Users" -Recurse
```

```bash
# Unix
git status --short
grep -RIE "cliente|planificacion|C:\\\\Users" . \
  --exclude-dir=.git --exclude-dir=build --exclude-dir=node_modules
```

Asegúrate de que `build/` está en `.gitignore` y de que solo viajan al
commit los archivos esperados.

## Reportar un bug

Abre un issue con:

- Distribución TeX y versión (`xelatex --version`, `pdflatex --version`,
  `latexmk --version`).
- Sistema operativo.
- Documento mínimo reproducible (idealmente uno de los ejemplos
  modificado).
- Salida del error con `-file-line-error`:
  ```bash
  xelatex -interaction=nonstopmode -file-line-error mi-doc.tex
  ```
- Copia del bloque relevante de `mi-doc.log` (especialmente las líneas
  con `^!` o `Error`).

## Dudas y discusiones

Para preguntas abiertas (¿debería añadirse X?, ¿cómo encajar Y?), abre un
issue marcado como `discussion`. PRs grandes sin discusión previa pueden
quedar bloqueados.

## Código de conducta

Discusión técnica. Sin ataques personales, sin contenido fuera de tema y
sin promociones. La revisión es directa y se centra en el código, no en
quien lo escribe.
