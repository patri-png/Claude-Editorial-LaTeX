# Notas de diseño

Este repositorio es un homólogo LaTeX de una experiencia visual tipo Claude/Open Design: no intenta copiar una interfaz web literalmente, sino traducir su lenguaje a composición documental.

## Traducción de CSS a LaTeX

| CSS / UI | LaTeX |
|---|---|
| `:root` tokens | `\definecolor{...}{HTML}{...}` |
| `font-family` | `\setmainfont`, `\setsansfont`, `\setmonofont` |
| `border-radius` | `arc` en `tcolorbox` |
| `border-left` de acento | `borderline west` |
| cards/surfaces | entornos `tcolorbox` |
| badges | `\tcbox[on line]` |
| iconos SVG | iconos vectoriales TikZ |
| layout responsive | `tabularx`, `tcbraster`, `minipage` |

## Principios

- Fondo cálido, no blanco puro.
- Acento terracota usado con moderación.
- Serif para autoridad editorial; sans para metadatos y UI.
- Bordes suaves y reglas finas antes que cajas pesadas.
- Componentes con función semántica clara: nota, decisión, advertencia, prueba, glosario.
- Evitar publicar contenido personal como ejemplo; las demos deben ser neutras y reutilizables.

## Paleta

La paleta vive en dos sitios:

- `claudeeditorial.cls`, para LaTeX.
- `tokens/claude-editorial.css`, para tener el equivalente CSS legible y reutilizable.

Los nombres son deliberadamente estables (`claudeParchment`, `claudeIvory`, `claudeTerracotta`, etc.) para que puedas cambiar los valores sin cambiar las macros de los documentos.
