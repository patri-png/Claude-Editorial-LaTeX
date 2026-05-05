# Claude Editorial LaTeX

Plantilla LaTeX editorial para documentos diarios de ingeniería de proyectos: decisiones, riesgos, arquitectura, evidencia técnica, código, tablas, notas laterales y reportes ejecutivos. El lenguaje visual está inspirado en la calidez editorial de Claude/Open Design: pergamino, marfil, terracota, grises cálidos, serif para autoridad y sans para utilidad.

Este repositorio es una plantilla pública limpia. No publica planificación personal ni materiales privados.

> Proyecto no oficial. No está afiliado a Anthropic ni a Claude.

## Qué incluye

- `claudeeditorial.cls`: clase principal y sistema visual.
- `main.tex`: documento maestro para trabajo diario de ingeniería.
- `template.tex`: punto de partida mínimo.
- `standalone-template.tex`: versión autocontenida basada en `article`.
- `examples/lorem-all-cases.tex`: ejemplo integral ficticio que toca casi todos los casos de uso.
- `examples/project-daybook.tex`: diario de ingeniería de proyectos.
- `examples/technical-showcase.tex`: código, SQL, tablas, UML/ER y consola.
- `examples/showcase.tex`: catálogo visual de componentes.
- `bibliography/references.bib`: bibliografía de ejemplo.
- `tokens/claude-editorial.css`: tokens equivalentes para web/design systems.
- `docs/`: arquitectura, componentes, buenas prácticas y mapa de inspiración.
- `scripts/build.ps1`: build simple en Windows.
- `latexmkrc`: build reproducible con `latexmk`.

## Uso rápido

Compilar el documento maestro:

```powershell
.\scripts\build.ps1 main.tex
```

Con `latexmk`:

```powershell
latexmk main.tex
```

Ejemplos:

```powershell
.\scripts\build.ps1 examples\project-daybook.tex
.\scripts\build.ps1 examples\technical-showcase.tex
.\scripts\build.ps1 examples\lorem-all-cases.tex
```

## Requisitos

- TeX Live, MiKTeX o MacTeX moderno.
- XeLaTeX recomendado.
- Biber solo si usas bibliografía con `main.tex`.
- Fuentes disponibles normalmente en distribuciones TeX: TeX Gyre Pagella, TeX Gyre Heros y Latin Modern Mono.

## Estructura recomendada para documentos

```tex
\documentclass{claudeeditorial}

\renewcommand{\DocTitle}{Mi informe}
\renewcommand{\DocSubtitle}{Subtítulo claro}
\renewcommand{\DocAuthor}{Equipo}
\renewcommand{\DocRole}{Project engineering}
\renewcommand{\DocRef}{DOC-001}

\ClaudeRunningHeader

\begin{document}
\BodyCopy
\ClaudeCover

\begin{claudehero}
\ClaudeLead{Resumen ejecutivo del documento.}
\end{claudehero}

\ClaudeDecisionRecord[Activa]
  {ADR-001 · Decisión}
  {Contexto.}
  {Decisión.}
  {Consecuencia.}

\end{document}
```

## Principios

- La clase define sistema visual, no contenido.
- Los documentos `.tex` definen metadatos, estructura y bibliografía.
- Las macros públicas empiezan por `Claude`.
- Los entornos legacy en minúscula (`claudenote`, `claudehero`) se conservan por ergonomía.
- No se vendorizan paquetes LPPL de terceros: sus ideas se han traducido a macros originales con licencia limpia.
- El acento terracota se usa con disciplina, no como decoración.
- Las tablas, diagramas y código deben ser reproducibles y legibles en PDF.

## Documentación

- `docs/ARCHITECTURE.md`: estructura del repositorio y responsabilidades.
- `docs/COMPONENTS.md`: inventario de macros y entornos.
- `docs/BEST_PRACTICES.md`: reglas de LaTeX y criterio editorial.
- `docs/PROJECT_ENGINEERING.md`: flujo de uso para documento diario de ingeniería.
- `docs/REFERENCE_MAP.md`: cómo se tradujeron los recursos LaTeX de inspiración.
- `docs/DESIGN_NOTES.md`: traducción del estilo visual a PDF.

## Licencia

Unlicense / dominio público. Puedes copiar, modificar, vender, publicar y reutilizar el código sin pedir permiso y sin atribución obligatoria.
