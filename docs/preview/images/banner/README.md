# Open Graph banner

Tarjeta Open Graph 1280×640 lista para usarse como `og:image` del repo
y para arrastrar como primera imagen en posts de LinkedIn / Twitter /
Mastodon.

## Archivos

| Fichero | Tamaño nativo | Peso | Uso |
|---|---|---:|---|
| [`og-banner.png`](og-banner.png) | 2560×1280 (retina @2x) | ~540 KB | **Subir a GitHub: Settings → General → Social preview.** Se downscalea limpio. |
| [`og-banner-1x.png`](og-banner-1x.png) | 1280×640 (nativo) | ~210 KB | Para upload directo a LinkedIn si la versión @2x pesa demasiado para tu cliente. |

## Cómo subirlo a GitHub como social preview

1. Ir a `Settings → General → Social preview` del repo.
2. Pulsar **Edit** y arrastrar `og-banner.png`.
3. GitHub recomienda 1280×640; la versión @2x se downscalea sin pérdida visible.

Después puedes verificar que la tarjeta sale bien en:

- <https://www.opengraph.xyz/url/https%3A%2F%2Fgithub.com%2Fpatri-png%2FClaude-Editorial-LaTeX>
- <https://cards-dev.twitter.com/validator>
- LinkedIn Post Inspector (vía pegar el link en el composer; LinkedIn
  cachea de forma agresiva, puede tardar unas horas en refrescar).

## Especificación visual

- **Paleta**: `#0d1117` (GitHub dark), `#FBF4E4` (pergamino),
  `#E8DDC4` (marfil), `#A05A3D` (terracota), `#C9A878` (acento dorado).
- **Tipografías**: EB Garamond (display), JetBrains Mono (label/UI),
  Inter (cuerpo).
- **Composición**: lockup tipográfico «Claude Editorial LaTeX» a la
  izquierda + tarjeta de paper de muestra a la derecha mostrando el
  formato editorial (working paper, abstract, fórmula, sección de
  resultados).
- **Fórmula del paper de muestra**: `d_impl(r,n) = 2(r²+r)/n + n − 2r − 1`
  (denominador del coeficiente AR · LOC).
- Sin emojis. Sin gradientes agresivos. Vignette terracota sutil en la
  esquina superior derecha como única decoración.

## Re-render (referencia)

Estos assets se generaron con un pipeline Playwright + Chromium a
partir de un HTML autocontenido. Si en el futuro queremos editar el
banner (cambiar el copy, la fórmula de muestra o los badges), el flujo
sería:

```bash
python -m pip install playwright
python -m playwright install chromium
python render_og.py --scale 2                 # 2560×1280 retina
python render_og.py --scale 1 --out lite.png  # 1280×640 nativo
```

El HTML fuente y el script de render no se versionan en el repo público
para mantener el directorio ligero; los PNG renderizados sí.
