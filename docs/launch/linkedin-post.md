# Texto de lanzamiento — LinkedIn

Dos versiones del post para anunciar `Claude-Editorial-LaTeX` en
LinkedIn. La primera es la versión larga, formato historia. La segunda
es una variante corta para si quieres algo más rápido o para un segundo
post de seguimiento.

Repositorio publicado: <https://github.com/patri-png/Claude-Editorial-LaTeX>

---

## Versión larga · ~1500 caracteres (recomendada)

> Llevo años escribiendo papers, ADRs, runbooks y diarios de ingeniería en LaTeX. Cada vez que arrancaba un documento perdía media tarde montando la portada, los colores, las cajas, los theorems y la bibliografía.
>
> Lo paré, lo destilé y lo publiqué abierto.
>
> Os presento **`Claude-Editorial-LaTeX`**, mi primer proyecto público en GitHub.
>
> Una clase LaTeX editorial completa, en dominio público (Unlicense), pensada para escribir sin pelearse con la maquetación:
>
> — Paleta cálida (pergamino, marfil, terracota) en lugar del gris de revista.
> — KPI cards, ADR records, tablas de riesgos, theorems en castellano e inglés con `\cref` automático.
> — Bloques de código numerados para 12 lenguajes (SQL, Python, TypeScript, VBA, Java, C, C++, C#…).
> — Diagramas UML y ER nativos en TikZ, sin paquetes vendorizados.
> — Portada de paper académico con abstract, keywords y AMS subject classification.
> — Compila igual en MiKTeX, TeX Live, MacTeX y Overleaf.
>
> Y como prueba de campo: los 7 documentos que algunos recordáis de mis posts anteriores —la trazabilidad del audio de Juan Pedro, EGARCH del código a la fórmula, las redes CfC del MIT, los 4000 años de interpolación en 30 líneas de Python, el ejercicio UNED, el aforismo de Erasmo y *La parte principal*— están ahí dentro, portados a la plantilla. Sirven como ejemplo de lo que el kit es capaz de producir cuando le das contenido real, no *lorem ipsum*.
>
> → github.com/patri-png/Claude-Editorial-LaTeX
>
> Open source, sin atribución obligatoria, sin afiliación con Anthropic. La estética está inspirada en su lenguaje de diseño público; el código es 100 % original.
>
> Si os resulta útil, una estrella en GitHub es la señal que mejor me orienta para saber qué merece la pena seguir manteniendo.
>
> \#LaTeX \#OpenSource \#ScientificWriting \#AcademicWriting \#TechnicalWriting \#ProjectEngineering

---

## Versión corta · ~600 caracteres (de respaldo)

> Después de años escribiendo papers y diarios de ingeniería en LaTeX —y de perder media tarde montando portada, theorems y bibliografía cada vez— lo he publicado en abierto.
>
> **`Claude-Editorial-LaTeX`** · una clase LaTeX editorial completa, en dominio público.
>
> · Paleta cálida (pergamino · marfil · terracota).
> · KPI cards, ADR records, tablas de riesgos, theorems con `\cref`.
> · Código numerado en 12 lenguajes, UML/ER en TikZ nativo.
> · Portada de paper con abstract, keywords y AMS subject classification.
> · MiKTeX, TeX Live, MacTeX y Overleaf, sin instalar fuentes.
>
> Dentro tenéis 7 publicaciones mías anteriores portadas a la plantilla como showcase con contenido real.
>
> → github.com/patri-png/Claude-Editorial-LaTeX
>
> Una estrella, si os sirve.
>
> \#LaTeX \#OpenSource \#AcademicWriting

---

## Notas de uso

- LinkedIn corta el texto a las 2-3 primeras líneas: el hook (la pérdida
  de medias tardes) ya empuja al «ver más».
- La URL bare (`github.com/patri-png/Claude-Editorial-LaTeX` sin
  `https://`) renderiza como tarjeta con thumbnail una vez LinkedIn
  rastrea el repo. Si quieres asegurar que la tarjeta lleve la imagen
  del paper hero, sube primero la galería (los PDFs y los PNG están en
  `docs/preview/`) y deja que pasen unas horas para que LinkedIn cachee
  el OG-image del README.
- Considera adjuntar como imagen del post el PNG de portada
  `docs/preview/images/research-paper-1.png` o
  `docs/preview/images/main-1.png`: las dos transmiten muy bien el
  lenguaje visual del kit en el feed.
- Para un segundo post de seguimiento, podrías destacar uno solo de los
  showcases (por ejemplo el de Trazabilidad o el de EGARCH) con su
  thumbnail de `docs/preview/images/`, y enlazar al PDF correspondiente
  en `docs/preview/pdf/`.
