# Componentes

`claudeeditorial.cls` expone una biblioteca de piezas para componer documentos editoriales en PDF. La idea es usar pocas piezas por página, pero tener suficientes opciones para informes largos.

## Base

| Comando / entorno | Uso |
|---|---|
| `\BodyCopy` | Aplica el color base del cuerpo. |
| `\DisplayFont` | Familia display/serif. |
| `\UIFont` | Familia UI/sans. |
| `\ClaudeRule`, `\ClaudeSubtleRule` | Separadores horizontales suaves. |
| `\OrnamentRule`, `\DoubleRule`, `\ArtRule` | Reglas decorativas editoriales. |
| `\ClaudeCover` | Portada editorial basada en metadatos. |
| `\ClaudeRunningHeader` | Cabecera y pie reutilizables. |
| `\ClaudeChapterPage{num}{título}{subtítulo}` | Apertura de capítulo. |
| `\ClaudeFitImage{ancho}{alto}{ruta}` | Imagen ajustada a un área mínima. |

## Cajas editoriales

| Entorno | Uso |
|---|---|
| `claudehero` | Resumen ejecutivo o bloque inicial. |
| `claudenote` | Nota contextual. |
| `claudequote` | Cita o idea central. |
| `claudecard` | Contenedor neutro. |
| `claudeaside` | Caja lateral con título. |
| `claudecallout` | Llamada destacada. |
| `claudedecision` | Decisión, recomendación o conclusión. |
| `claudechecklist` | Lista de verificación. |
| `claudewarning` | Advertencia. |
| `claudedarkpanel` | Sección oscura para cambio de atmósfera. |
| `claudeproof` | Prueba, razonamiento o justificación. |
| `claudeepigraph` | Epígrafe de capítulo. |
| `ClaudeInfo`, `ClaudeTip`, `ClaudeWarning`, `ClaudeCritical`, `ClaudeCheck`, `ClaudeQuestion` | Cajas semánticas nuevas. |
| `ClaudeCard` | Card editorial con título y `\ClaudeCardFooter`. |

## Macros visuales

| Comando | Uso |
|---|---|
| `\ClaudeBadge[color]{texto}` | Badge inline. |
| `\ClaudeLead{texto}` | Párrafo introductorio grande. |
| `\ClaudeStat{label}{valor}{detalle}` | Tarjeta de métrica. |
| `\BigStat[delta]{label}{valor}{detalle}` | Métrica grande. |
| `\KPICard{label}{valor}{detalle}` | KPI compacto. |
| `\Tag[color]{texto}` | Etiqueta inline. |
| `\Highlight[color]{texto}` | Realce suave de texto. |
| `\SectionOpener{num}{título}{subtítulo}` | Apertura visual de sección. |
| `\ChapterMark{num}{título}` | Apertura de capítulo. |
| `\DropCap{L}{resto}` | Capitular. |
| `\PressQuote[autor] ...` | Cita estilo prensa. |
| `\Comparison ... \CompCol{título}{contenido}` | Comparación a dos columnas. |
| `\ClaudeBanner[color]{texto}` | Banda editorial tipo separador. |

## Iconos y estados

| Comando | Uso |
|---|---|
| `\IconCheck`, `\IconCross`, `\IconWarn` | Validación, error y advertencia. |
| `\IconArrow`, `\IconStar`, `\IconInfo` | Flujo, destacado e información. |
| `\IconLock`, `\IconDot` | Restricción y marcador. |
| `\SevCritical`, `\SevHigh`, `\SevMedium`, `\SevLow`, `\SevInfo` | Badges de severidad. |
| `\StatusDone`, `\StatusWIP`, `\StatusOpen` | Estados textuales. |
| `\DeltaUp`, `\DeltaFlat`, `\DeltaDown` | Indicadores de variación. |

## Estructuras técnicas

| Comando / entorno | Uso |
|---|---|
| `definicion`, `teorema`, `ejemplo`, `observacion` | Ambientes tipo theorem. |
| `\DefnEntry{término}{definición}` | Glosario inline. |
| `\EntrevistaQ{...}`, `\EntrevistaA{...}` | Formato pregunta-respuesta. |
| `\ClaudeTimelineItem{fecha}{título}{detalle}` | Cronología vertical simple. |
| `\ClaudeSignature{nombre}{rol}` | Firma de cierre. |
| `\ClaudeProjectHeader{proyecto}{subtítulo}{fecha}{estado}` | Cabecera operativa de proyecto. |
| `\ClaudeDecisionRecord[estado]{título}{contexto}{decisión}{consecuencia}` | Registro de decisión. |
| `ClaudeActionList` + `\ClaudeActionItem{dueño}{fecha}{tarea}` | Lista de acciones. |
| `\ClaudeRiskRow{riesgo}{impacto}{mitigación}{estado}` | Fila de tabla de riesgos. |

## Código y salidas

| Comando / entorno | Uso |
|---|---|
| `ClaudeCode[title={...}]{SQL}` | Listados de código con numeración y estilo editorial. |
| `ClaudeConsole` | Salida de terminal. |
| `ClaudeOutput` | Resultado esperado o evidencia textual. |
| `ClaudeExercise`, `ClaudeSolution` | Material didáctico o cuadernos de práctica. |
| `\CodeInline{...}`, `\SQLTerm{...}` | Código inline y términos SQL. |

Lenguajes preparados: `SQL`, `JavaScript`, `TypeScript`, `JSON`, `CSS`, `HTML`, `XML`, `VBA`, `Java`, `C`, `Cpp` y `CSharp`.

## Diagramas

| Comando / entorno | Uso |
|---|---|
| `ClaudeDiagram` | Contenedor para diagramas TikZ. |
| `\ClaudeUMLClass`, `\ClaudeUMLInterface`, `\ClaudeUMLRelation` | Diagramas UML nativos. |
| `\ClaudeEREntity`, `\ClaudeERWeakEntity`, `\ClaudeERAttribute` | Elementos ER. |
| `\ClaudeERRelationship`, `\ClaudeERIsa`, `\ClaudeERLink` | Relaciones ER básicas. |
| `\ClaudeEROneToMany`, `\ClaudeERManyToOne`, `\ClaudeERManyToMany` | Cardinalidades ER con pata de cuervo. |
| `\ClaudeKey`, `\ClaudeWeakKey` | Claves ER subrayadas o discontinuas. |

Consulta `examples/showcase.tex` para ver una página de cada familia de componentes y `examples/lorem-all-cases.tex` para una prueba integral tipo lorem ipsum con código, tablas, notas, UML y ER.
