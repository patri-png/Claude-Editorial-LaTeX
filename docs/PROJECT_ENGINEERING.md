# Documento diario de ingeniería de proyectos

`main.tex` está pensado como manual de marca y uso: una pieza diaria para coordinar estado, decisiones y evidencia sin convertir el documento en una presentación.

## Estructura recomendada

1. Portada editorial con metadatos.
2. Tabla de contenidos.
3. Situación diaria.
4. Indicadores.
5. Decisión activa.
6. Riesgos.
7. Evidencia reproducible.
8. Referencias.
9. Firma.

## Bloques clave

| Bloque | Macro / entorno | Cuándo usarlo |
|---|---|---|
| Estado de proyecto | `\ClaudeProjectHeader` | Inicio de una jornada o informe operativo. |
| Decisión | `\ClaudeDecisionRecord` | ADR, recomendación o cambio de criterio. |
| Acción | `ClaudeActionList` + `\ClaudeActionItem` | Seguimiento de próximos pasos. |
| Riesgo | `\ClaudeRiskRow` | Tabla de riesgos con mitigación y estado. |
| Evidencia | `ClaudeCode` + `ClaudeOutput` | Consultas, comandos, resultados y verificaciones. |
| Nota lateral | `\ClaudeMarginInfo` | Aclaración breve que no debe interrumpir el hilo. |

## Regla editorial

Cada bloque debe responder a una pregunta clara:

- ¿Qué ha cambiado?
- ¿Qué decisión queda fijada?
- ¿Qué riesgo hay que controlar?
- ¿Qué evidencia permite verificarlo?
- ¿Quién hace qué y cuándo?
