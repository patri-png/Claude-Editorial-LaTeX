# Buenas prácticas LaTeX

## Organización

- Mantén la identidad visual en `claudeeditorial.cls`.
- Mantén el contenido del documento en `.tex`.
- Mantén referencias bibliográficas en `bibliography/*.bib`.
- Mantén imágenes y adjuntos del documento fuera de la clase.
- No copies preámbulos completos dentro de cada documento: usa macros y entornos reutilizables.

## Macros

- Nombra macros públicas con prefijo `Claude...`.
- Usa macros de metadatos (`\DocTitle`, `\DocAuthor`, `\DocRef`) en vez de texto hardcodeado.
- Crea entornos semánticos para intención editorial: información, riesgo, decisión, evidencia, salida.
- Evita macros que mezclen contenido privado con estilo.

## Tipografía

- Compila con XeLaTeX o LuaLaTeX.
- Usa serif para lectura y titulares editoriales.
- Usa sans para metadatos, badges, cabeceras y UI documental.
- Usa mono solo para código, comandos y salidas reproducibles.

## Tablas

- Usa `ClaudeTable` para tablas principales.
- Usa `tabularx` cuando el texto pueda crecer.
- Define columnas semánticas (`L`, `R`, `P`, `M`) en la clase y no en cada documento.
- Mantén reglas finas y color suave; las tablas deben ser legibles antes que ornamentales.

## Código

- Usa `ClaudeCode` para fragmentos reproducibles.
- Usa `ClaudeConsole` para salidas de terminal.
- Usa `ClaudeOutput` para resultados esperados o evidencia textual.
- Añade `title={...}` a listados largos.

## Diagramas

- Usa los estilos `claude uml ...` y `claude er ...` antes de definir estilos nuevos.
- Usa `ClaudeDiagram` para dar aire y marco editorial a diagramas TikZ.
- Mantén relaciones simples: si el diagrama necesita demasiada explicación, divídelo.

## Bibliografía

- Carga `biblatex` en el documento principal.
- Mantén `\addbibresource{bibliography/references.bib}` cerca del inicio.
- Usa claves neutras y descriptivas.
- No metas bibliografía dentro de la clase.

## Privacidad

Antes de publicar:

- Busca nombres propios, clientes, rutas locales, planes internos y capturas internas.
- Revisa `.gitignore`.
- Comprueba `git status --short`.
- Publica solo ejemplos ficticios o genéricos.
