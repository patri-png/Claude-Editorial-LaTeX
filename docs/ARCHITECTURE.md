# Arquitectura del repositorio

Este repositorio separa la plantilla en capas para que pueda mantenerse como un producto editorial, no como un preámbulo monolítico.

## Capas

| Capa | Ruta | Responsabilidad |
|---|---|---|
| Clase | `claudeeditorial.cls` | Sistema visual, tipografía, macros, cajas, tablas, código y diagramas. |
| Entrada principal | `main.tex` | Documento diario de ingeniería de proyectos. |
| Plantilla mínima | `template.tex` | Punto de partida limpio para un documento nuevo. |
| Ejemplos | `examples/` | Casos de uso completos para validar componentes. |
| Bibliografía | `bibliography/` | Referencias BibLaTeX opcionales del documento, no de la clase. |
| Tokens | `tokens/` | Paleta y equivalencias CSS para mantener coherencia con diseño digital. |
| Scripts | `scripts/` | Build y limpieza reproducibles. |

## Decisiones de diseño

- La clase no carga `biblatex`: la bibliografía pertenece al documento, no al sistema visual.
- La clase usa XeLaTeX/LuaLaTeX por `fontspec`, fuentes Unicode y mejor control tipográfico.
- Los componentes TikZ/UML/ER son nativos para evitar dependencias externas difíciles de licenciar o versionar.
- La paleta usa una base cálida y editorial: parchment, ivory, terracotta y neutrales orgánicos.
- El acento terracota se reserva para jerarquía, decisión y orientación, no para decorar cada bloque.

## Contrato público

El repositorio no debe incluir documentos reales, planes internos, nombres de clientes, capturas privadas ni rutas locales personales. Los ejemplos deben ser neutros y reutilizables.
