# Changelog

Todos los cambios relevantes de **Claude Editorial LaTeX** se registran en
este archivo. El formato sigue [Keep a Changelog](https://keepachangelog.com/)
y el versionado [SemVer](https://semver.org/lang/es/).

## [0.2.0] — 2026-05-05

Soporte matemático SIAM-style, portada de paper académico, obras del autor
publicadas y compatibilidad Overleaf documentada.

### Añadido — soporte matemático

- **Theorem-like environments** en castellano e inglés compartiendo
  contador con `[teorema]`: `teorema`, `proposicion`, `lema`,
  `corolario`, `definicion`, `ejemplo`, `axioma`, `conjetura`,
  `observacion`, `nota` + `theorem`, `proposition`, `lemma`,
  `corollary`, `definition`, `example`, `conjecture`, `axiom`,
  `remark`, `note`. Cabecera terracota para sentencias formales y
  gris cálido para `remark`/`nota`/`observacion`.
- **`cleveref`** cargado tras `hyperref` + `amsthm` con
  `[capitalize, noabbrev, nameinlink]`. `\cref{thm:foo}` resuelve a
  *«Teorema 4.2»* sin escribir el prefijo a mano.
- **Numeración de ecuaciones en terracota** vía `\tagform@` redefinido.
- **`amsfonts`** añadido a las dependencias (era el único faltante de
  la trinidad ams).
- **Macros matemáticas reutilizables** con `\providecommand` (no
  pisan definiciones del documento):
  - Conjuntos: `\R \N \Z \Q \C \F`.
  - Probabilidad y estadística: `\E \Prob \Var \Cov \Corr \Bias \MSE`.
  - Álgebra lineal: `\rank \tr \diag \spn \im`.
  - Operadores: `\sign \sgn \argmin \argmax` (estos dos con
    `\DeclareMathOperator*`).
  - Delimitadores con autosizing (mathtools): `\abs \norm \inner \set
    \floor \ceil`.
  - `\indicator{x>0}`, `\dif x` (diferencial editorial),
    `\eps`/`\veps`, `\given`, `\vect{x}`, `\mat{A}`.
- **`\proofname`** redefinido a *Demostración* en estilo terracota.

### Añadido — portada de paper académico

- **`\ClaudePaperCover{abstract}`** — portada para working papers con
  bloque de autores, fecha, referencia, abstract en caja marfil,
  keywords y AMS subject classification.
- **`\PaperAuthor{nombre}{afiliación}{email}`** — se acumulan;
  `\PaperKeywords` y `\PaperMSC` controlan los dos campos finales.
- **`ClaudeAbstract`** environment + **`\ClaudeKeywords`** +
  **`\ClaudeMSC`** para usar fuera de la portada (cuando el paper
  ya usa `\maketitle` estándar).
- **`\ClaudeCoverEditorial`** — variante de cubierta tipo revista
  científica con banda completa terracota, ornamento tipográfico de
  fondo (§ en pergamino tenue) y masthead inferior con
  autor/fecha/referencia/rol/estado/fase.

### Añadido — ejemplo nuevo

- **`examples/research-paper.tex`** (6 págs.) — borrador de working
  paper que ejercita todas las features matemáticas: portada con
  abstract+keywords+MSC, definiciones, proposiciones, teoremas con
  demostración completa, conjetura, ecuaciones numeradas, `\cref`,
  bloque de KPI académicos, ADR metodológico, tabla de hipótesis
  abiertas y verificación numérica con `Fraction`.

### Añadido — obras del autor portadas al sistema visual claudeeditorial

Siete trabajos del autor (publicados en LinkedIn) **portados a la clase
`claudeeditorial`** — paleta editorial, cabecera operativa y cajas
semánticas en lugar del estilo LinkedIn-blue del original. Sirven como
showcase con contenido real (no lorem ipsum) de las features del kit:

- `la-parte-principal.tex` (7 págs.) — `\ClaudeCover` + 5×`\ClaudeChapterPage`
  con numeración romana, `claudehero` con `gather*`, `claudequote` para
  citas bíblicas, `ClaudeTip` final.
- `trazabilidad-juan-pedro.tex` (10 págs.) — KPI cards, `ClaudeCard`
  con fórmula de pipeline, `ClaudeInfo`/`ClaudeTip`/`ClaudeCheck`,
  `ClaudeTable` de complejidad, `ClaudeDiagram` con TikZ y la paleta.
- `interpolacion-codigo.tex` (12 págs.) — 4×`ClaudeCode[Python]`
  (búsqueda binaria, MixUp), `ClaudeCard` para fórmulas matemáticas,
  `ClaudeTable` lineal vs log-lineal.
- `egarch-codigo-formula.tex` (12 págs.) — `ClaudeCode[VBA]` con la
  macro Solver, `ClaudeTable` de correspondencia VBA↔matemática,
  `ClaudeDiagram` con `pgfplots` (efecto leverage en paleta editorial).
- `cfc-redes-neuronales.tex` (11 págs.) — KPI cards comparativos,
  `ClaudeCard` con la ecuación CfC, `ClaudeWarning` para limitaciones,
  `ClaudeDiagram` con diagrama de Venn (Neural ODE / CfC / RNN).
- `erasmus-elogio-locura.tex` (3 págs.) — aforismo medieval con
  `claudehero`, `claudequote` y `ClaudeTip`.
- `uned-superficie-cilindrica.tex` (3 págs.) — ejercicio resuelto con
  `ClaudeInfo` (objetivo) + `ClaudeTip` (elemento de área) +
  `ClaudeCheck` (resultado $4\pi R^3$).

Compilación con `xelatex` (la clase usa `fontspec`). Cuando se pasen
las obras a Overleaf, marcar el `.tex` correspondiente como *Main
document* y elegir XeLaTeX como compilador.

### Añadido — Overleaf

- Sección Overleaf en el README con instrucciones paso a paso
  (descargar ZIP → New Project → Upload Project → XeLaTeX).
- Badge **Open in Overleaf** preparado para apuntar al ZIP del repo
  cuando esté publicado.
- Notas de las particularidades de Overleaf: TeX Live full ya trae
  todas las fuentes y paquetes; las fuentes se cargan por filename
  OTF para evitar el típico error *«TeX Gyre Pagella cannot be
  found»*.

### Robustecido

- **Babel-spanish reconfigurado en la clase** (`[spanish,es-noshorthands]`)
  para que `<` y `>` no sean shorthands. Permite escribir código Python /
  VBA / SQL y ASCII art en el cuerpo del documento sin romper la
  compilación.
- **`\%` neutralizado** vía `\AtBeginDocument{\renewcommand{\%}{\char37\relax}}`.
  babel-spanish redefine `\%` como `\es@sppercent`, un manejador de
  espaciado «inteligente» que inspecciona `\lastskip` y rompe
  («Incompatible glue units») en cuanto se usa dentro de un TikZ node,
  un baseline de tcolorbox o cualquier contexto con cálculo de glue
  compuesto. Restaurar `\%` al carácter literal lo hace usable en
  cualquier contexto: `\Highlight{100\,\%}`, `$100\,\%$` dentro de
  cajas, etc.

### Galería pre-renderizada actualizada

- 8 PDFs nuevos en `docs/preview/pdf/` (research-paper + 7 aforismos).
- 16 PNGs nuevos en `docs/preview/images/` (primeras 2 páginas de
  cada documento nuevo a 130 DPI).

## [0.1.0] — 2026-05-05

Primer release público. Plantilla utilizable de extremo a extremo, con
documentación, ejemplos compilados y galería pre-renderizada.

### Añadido

- `claudeeditorial.cls` — clase editorial principal (≈ 1.700 líneas) con
  sistema visual completo: portada, capítulos, header/footer, paleta cálida
  y paleta técnica PulseID, microtype, hyperref y bookmarks.
- Macros estructurales: `\ClaudeCover`, `\ClaudeChapterPage`,
  `\ClaudeProjectHeader`, `\ClaudeRunningHeader`, `\ClaudeBanner`,
  `\ClaudeSignature`, `\CornerRibbon`.
- Cajas semánticas: `ClaudeInfo`, `ClaudeTip`, `ClaudeWarning`,
  `ClaudeCritical`, `ClaudeCheck`, `ClaudeQuestion`, `ClaudeCard`,
  `ClaudeDiagram`, `ClaudeOutput`, `ClaudeConsole`.
- Cajas editoriales legacy en minúscula por ergonomía: `claudehero`,
  `claudenote`, `claudequote`, `claudecard`, `claudeaside`,
  `claudecallout`, `claudedecision`, `claudechecklist`, `claudewarning`,
  `claudedarkpanel`, `claudeproof`, `claudeepigraph`.
- Métricas y badges: `\KPICard`, `\BigStat`, `\ClaudeStat`,
  `\ClaudeBadge`, `\Tag`, `\Highlight`, estados `\StatusOpen` /
  `\StatusWIP` / `\StatusDone`, severidades `\SevCritical` /
  `\SevHigh` / `\SevMedium` / `\SevLow` / `\SevInfo`, deltas
  `\DeltaUp` / `\DeltaFlat` / `\DeltaDown`.
- Operación de proyecto: `\ClaudeDecisionRecord` (registro ADR completo
  con estado, contexto, decisión y consecuencia), `ClaudeActionList` +
  `\ClaudeActionItem`, `\ClaudeRiskRow`, `\ClaudeTimelineItem`.
- Tablas: entorno `ClaudeTable` con columnas `L`, `R`, `C`, `Y`, `P{w}`,
  `M{w}`, cabecera `\ClaudeTableHeader` y reglas `booktabs`.
- Bloques de código: entorno `ClaudeCode[title=…]{lang}` con numeración
  editorial, `ClaudeConsole`, `ClaudeOutput`, `\CodeInline`, `\SQLTerm`.
  Lenguajes preconfigurados: SQL, JavaScript, TypeScript, JSON, CSS,
  HTML, XML, VBA, Java, C, C++, C#.
- Diagramas UML nativos en TikZ: `\ClaudeUMLClass`,
  `\ClaudeUMLInterface`, `\ClaudeUMLRelation`, estilos
  `claude uml relation` / `inherit` / `dependency`.
- Diagramas ER nativos en TikZ con cardinalidad pata de cuervo:
  `\ClaudeEREntity`, `\ClaudeERWeakEntity`, `\ClaudeERAttribute`,
  `\ClaudeERRelationship`, `\ClaudeERIsa`, `\ClaudeEROneToMany`,
  `\ClaudeERManyToOne`, `\ClaudeERManyToMany`, `\ClaudeKey`,
  `\ClaudeWeakKey`.
- Compatibilidad Pandoc: entornos `Highlighting` y `Shaded` con todos
  los `\KeywordTok`, `\StringTok`, `\OperatorTok`, `\CommentTok`, etc.
  para renderizar la salida de `pandoc -t latex` directamente.
- Documentos:
  - `main.tex` — documento maestro con bibliografía (`biblatex` +
    `biber`, estilo `authoryear`).
  - `template.tex` — punto de partida mínimo.
  - `standalone-template.tex` — variante autocontenida sobre
    `\documentclass{article}`.
- Ejemplos compilados:
  - `examples/showcase.tex` — catálogo visual de componentes (6 págs.).
  - `examples/project-daybook.tex` — diario de ingeniería (4 págs.).
  - `examples/technical-showcase.tex` — código y diagramas (4 págs.).
  - `examples/lorem-all-cases.tex` — prueba integral (14 págs.) que
    ejercita casi todo el sistema visual con contenido ficticio.
- Bibliografía de ejemplo: `bibliography/references.bib`.
- Tokens equivalentes para web/design systems:
  `tokens/claude-editorial.css`.
- Documentación:
  - `docs/ARCHITECTURE.md` — estructura del repo.
  - `docs/COMPONENTS.md` — inventario completo de macros y entornos.
  - `docs/BEST_PRACTICES.md` — reglas LaTeX y criterio editorial.
  - `docs/PROJECT_ENGINEERING.md` — flujo de uso diario.
  - `docs/REFERENCE_MAP.md` — cómo se tradujo la inspiración a macros
    propias con licencia limpia.
  - `docs/DESIGN_NOTES.md` — traducción del estilo visual al PDF.
- Galería pre-renderizada en `docs/preview/`:
  - PDFs compilados de los siete documentos.
  - PNGs (130 DPI) de las primeras 4 páginas de cada documento.
  - Excepción explícita en `.gitignore` para versionar PDFs/PNGs solo
    bajo `docs/preview/`.
- Build:
  - `latexmkrc` con `pdf_mode=5` (XeLaTeX) y `bibtex_use=2`.
  - `scripts/build.ps1` — compilación simple en Windows / PowerShell.
  - `scripts/clean.ps1` — limpieza de archivos auxiliares.
- Licencia [Unlicense](LICENSE) — dominio público sin atribución
  obligatoria.

### Robustecido

- **Carga de fuentes por filename OTF.** `\setmainfont{TeX Gyre Pagella}`
  pasa a `[Extension=.otf, UprightFont=texgyrepagella-regular, …]` para
  no depender de la caché de fuentes del sistema operativo. La plantilla
  ahora compila igual en MiKTeX, TeX Live y MacTeX sin instalar fuentes.
- **`ClaudeTable` con `\newenvironment`** en lugar de
  `\NewDocumentEnvironment`. `tabularx` escanea su cuerpo buscando
  `\end{tabularx}` literal; si se envuelve con xparse, falla con
  *Runaway argument? File ended while scanning use of `\TX@get@body`*.
- **`\ClaudeTableHeader` con `\newcommand`** en lugar de
  `\NewDocumentCommand`. `\rowcolor` necesita expansión transparente
  para detectar el contexto de fila; xparse rompe esa detección y
  produce *Misplaced `\noalign`*.
- **`fvextra`** cargado después de `fancyvrb` para habilitar
  `breaklines` en los entornos `Highlighting` compatibles con Pandoc.
- **`align=center` en `claude uml class`** para que `\\` funcione
  dentro de los nodos UML con `rectangle split` (antes producía
  *Not allowed in LR mode*).
- **`ClaudeTableSetup`** ya no usa `\rowcolors{2}{…}{…}`, que entraba
  en conflicto con `\toprule`/`\bottomrule` y producía *Misplaced
  `\noalign`*.

### Notas

- Versión inicial; la API de macros puede cambiar antes de `1.0.0`.
- Cualquier macro que se renombre o retire se documentará en este
  changelog con un aviso de **deprecation** al menos un release antes.

[0.2.0]: https://github.com/patri-png/Claude-Editorial-LaTeX/releases/tag/v0.2.0
[0.1.0]: https://github.com/patri-png/Claude-Editorial-LaTeX/releases/tag/v0.1.0
