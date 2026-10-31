# AUVIN · Catálogo

Página de catálogo de fragancias de AUVIN, con un panel para cargar y editar perfumes desde la compu o el celu.

| Archivo        | Qué es                                                        |
|----------------|---------------------------------------------------------------|
| `index.html`   | La página del catálogo                                        |
| `admin.html`   | El panel para agregar, editar, ordenar y borrar perfumes      |
| `productos.js` | La lista de perfumes. La escribe el panel                     |
| `img/`         | Las fotos de los perfumes                                     |

## Publicar con GitHub Pages (una sola vez)

En el repositorio de GitHub: **Settings → Pages → Build and deployment → Deploy from a branch**, elegí la rama `main` y la carpeta `/ (root)`, y guardá. En uno o dos minutos queda online en:

- Catálogo: `https://TU-USUARIO.github.io/auvin-catalogo/`
- Panel: `https://TU-USUARIO.github.io/auvin-catalogo/admin.html`

## Crear la clave del panel (una sola vez)

El panel guarda los cambios directamente en GitHub, así que necesita una clave con permiso sobre este repositorio:

1. Entrá a <https://github.com/settings/personal-access-tokens/new> (Settings → Developer settings → Fine-grained tokens → Generate new token).
2. Nombre: `Panel AUVIN`. Elegí cuánto dura (cuando vence, se crea otra igual).
3. **Repository access → Only select repositories** → marcá `auvin-catalogo`.
4. **Permissions → Repository permissions → Contents → Read and write**.
5. **Generate token**, copiá la clave y pegala en el panel. GitHub la muestra una sola vez.

La clave queda guardada solo en el navegador donde la pegaste. Si perdés el celu o la compu, borrala desde esa misma página de GitHub y creá otra.

## Usar el panel

1. Abrí `admin.html` en tu página, entrá con la clave.
2. **Agregar perfume**: elegí la foto (se achica y se optimiza sola), completá marca, nombre, género y lo demás. Tocá la foto para elegir qué parte se ve en la tarjeta.
3. Editá, ordená con las flechas o borrá los que quieras.
4. Tocá **Publicar**. La página se actualiza en unos minutos (a veces hay que recargar).

Si cerrás el panel sin publicar, los cambios quedan guardados en ese navegador y se recuperan al volver a entrar.

Para practicar sin tocar nada, abrí `admin.html?demo`: funciona igual pero no guarda en GitHub.

## Ver la página en tu compu

Abrí `index.html` con doble clic.
