# Contribuir

Gracias por mejorar esta plantilla. El objetivo del repositorio es mantener una clase LaTeX editorial, limpia y reutilizable para documentos técnicos.

## Reglas

- No incluyas contenido privado, planificación real, clientes, rutas locales ni capturas internas.
- Mantén los ejemplos ficticios y genéricos.
- Añade componentes públicos en `claudeeditorial.cls` con prefijo `Claude`.
- Documenta cada familia nueva en `docs/COMPONENTS.md`.
- Si el cambio afecta al lenguaje visual, actualiza `tokens/claude-editorial.css` y `docs/DESIGN_NOTES.md`.
- Si añades una dependencia LaTeX nueva, justifica por qué no puede resolverse con lo ya disponible.

## Validación local

```powershell
.\scripts\build.ps1 main.tex
.\scripts\build.ps1 examples\technical-showcase.tex
.\scripts\build.ps1 examples\project-daybook.tex
```

Antes de publicar, revisa:

```powershell
git status --short
Select-String -Path .\* -Pattern "cliente|planificacion|C:\\Users" -Recurse
```
