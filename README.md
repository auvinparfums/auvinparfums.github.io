# AUVIN · Catálogo

Página de AUVIN con portada 3D, vitrina giratoria, catálogo con fotos, la lista completa de artículos y pedido por WhatsApp (+54 9 3754 49-5324). Incluye un panel para cargar y editar productos desde la compu o el celu.

| Archivo        | Qué es                                                                       |
|----------------|------------------------------------------------------------------------------|
| `index.html`   | La página                                                                    |
| `admin.html`   | El panel para agregar, editar, ordenar y borrar los productos con foto       |
| `productos.js` | Los productos con foto (perfumes, indumentaria, cuerpo y cuidado). Lo escribe el panel |
| `lista.js`     | La lista completa (unos 1000 artículos sin foto), armada desde las listas de artículos |
| `img/`         | Las fotos                                                                    |

## Cómo funciona el pedido

Cada producto tiene **Agregar**. El pedido se arma en la página (queda guardado en ese navegador) y el botón **Enviar pedido por WhatsApp** abre WhatsApp con la lista escrita, lista para mandar. Lo que tiene precio se suma; el resto queda “a consultar”.

## Publicar con GitHub Pages (una sola vez)

En el repositorio de GitHub: **Settings → Pages → Build and deployment → Deploy from a branch**, elegí la rama `main` y la carpeta `/ (root)`, y guardá. En uno o dos minutos queda online en:

- Página: `https://TU-USUARIO.github.io/auvin-catalogo/`
- Panel: `https://TU-USUARIO.github.io/auvin-catalogo/admin.html`

## Crear la clave del panel (una sola vez)

1. Entrá a <https://github.com/settings/personal-access-tokens/new> (Settings → Developer settings → Fine-grained tokens → Generate new token).
2. Nombre: `Panel AUVIN`. Elegí cuánto dura.
3. **Repository access → Only select repositories** → marcá `auvin-catalogo`.
4. **Permissions → Repository permissions → Contents → Read and write**.
5. **Generate token**, copiá la clave y pegala en el panel. GitHub la muestra una sola vez.

La clave queda guardada solo en el navegador donde la pegaste. Si perdés el celu o la compu, borrala desde esa página de GitHub y creá otra.

## Usar el panel

1. Abrí `admin.html` en tu página y entrá con la clave.
2. **Agregar producto**: elegí la categoría (perfume, indumentaria o cuerpo y cuidado), la foto (se achica sola), marca, nombre, género y lo demás. Tocá la foto para elegir qué parte se ve en la tarjeta.
3. Marcá **Mostrar en la vitrina 3D** en los que quieras destacar (conviene dejar unos 10 a 12).
4. Tocá **Publicar**. La página se actualiza en unos minutos.

Para practicar sin tocar nada, abrí `admin.html?demo`.

## Actualizar la lista completa

La lista sale de las imágenes de listas de artículos: el texto se leyó con OCR y lo arma `_fuentes/armar_lista.py` (la carpeta `_fuentes/` no se sube). Si cambian las listas, se puede volver a correr ese script o editar `lista.js` a mano.

## Imágenes

- Perfumes: fotos reales de AUVIN (de Instagram y las originales), recortadas y con más nitidez.
- Indumentaria y fondos de categorías: creadas con IA (ElevenLabs), sin marcas. En la página, la ropa figura como “foto ilustrativa” hasta que se reemplace por fotos reales desde el panel.
