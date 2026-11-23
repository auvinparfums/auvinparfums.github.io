# AUVIN · Catálogo de perfumes

Página de AUVIN Parfums: portada con AUVIN al centro y polvo dorado, vitrina 3D giratoria con algunos ejemplos de perfumes, catálogo con fotos y fichas con el frasco en 3D, y consulta por WhatsApp (+54 9 3754 49-5324). Toda la página usa la tipografía del logo (Montserrat). Incluye un panel para cargar y editar perfumes y un pedido para ChatGPT (`PROMPT-CHATGPT.md`) para preparar las fotos.

| Archivo             | Qué es                                                                  |
|---------------------|-------------------------------------------------------------------------|
| `index.html`        | La página                                                               |
| `admin.html`        | El panel para agregar, editar, ordenar y borrar perfumes                |
| `productos.js`      | Los perfumes (datos, notas y receta del modelo 3D). Lo escribe el panel |
| `img/`              | Las fotos, todas sobre el mismo fondo de estudio                        |
| `img/3d/`           | El recorte de cada frasco: la página arma el 3D con su silueta          |
| `PROMPT-CHATGPT.md` | El pedido para ChatGPT cuando consigas un perfume nuevo                 |
| `img/estudio.webp`  | El fondo de estudio vacío: el panel lo usa para las fotos nuevas        |

## Cómo consultan los clientes

- Cada perfume tiene **Consultar**: abre WhatsApp con un mensaje sobre ese perfume, listo para mandar.
- Con el botón **+** se suman perfumes a **Mi selección**. El botón **Consultar selección** abre la lista y **Consultar por WhatsApp** manda todos juntos en un solo mensaje.

## Usar el panel

Abrí `admin.html` y elegí dónde guardar:

- **En la carpeta del catálogo (compu)**: con Chrome o Edge, tocá **Elegir carpeta** y elegí la carpeta `auvin-catalogo`. Los cambios se guardan directo en `productos.js` y en `img/`. Para que se vean en internet, después hay que subirlos a GitHub.
- **En GitHub (también desde el celu)**: entrás con una clave (ver abajo) y al tocar **Publicar** la página se actualiza sola en uno o dos minutos.

Para cargar un perfume: **Agregar perfume**, elegí o arrastrá la foto y completá marca, nombre y género (lo demás es opcional).

- **Fondo de la foto**: en **Automático**, si la foto tiene fondo liso (blanco o claro, como las fotos de producto de las marcas) o es un PNG ya recortado, el perfume se recorta y queda parado sobre el mismo estudio que el resto. Si la foto tiene otro fondo (por ejemplo, sacada en el local), se funde con el estudio en un foco suave. También podés elegir **Recortar fondo**, **Foco suave** o **Foto tal cual**.
- **Modelo 3D**: sale solo de la foto (“Copiado de la foto”): la silueta del frasco se vuelve volumen y la misma foto lo viste, así que queda igual al real. Solo elegís si el frasco es plano/cuadrado o redondo y cuánta profundidad tiene. Necesita una foto sobre fondo blanco o claro; si no, se guarda sin 3D (o se puede armar a mano con formas y colores).
- **Mostrarlo en la vitrina 3D**: la vitrina de la portada muestra algunos ejemplos; conviene no pasar de 12.

Si la foto que tenés no sirve (fondo con cosas, caja, mano), usá el pedido para ChatGPT: está dentro del editor (botón **Copiar pedido**) y en `PROMPT-CHATGPT.md`.

**Fotos pendientes**: la pestaña del panel lista los productos del catálogo completo (`catalogo.js`) que todavía no tienen foto y por eso no se ven en la página. Con **Cargar foto** se le pone el fondo de estudio y el 3D; al guardar, el producto aparece en la web. Si se vuelve a armar el catálogo con `_fuentes/armar_catalogo.py`, esas fotos se respetan.

Para practicar sin guardar nada, abrí `admin.html?demo`.

## Publicar con GitHub Pages (una sola vez)

En el repositorio de GitHub: **Settings → Pages → Build and deployment → Deploy from a branch**, elegí la rama `main` y la carpeta `/ (root)`, y guardá. En uno o dos minutos queda online en:

- Página: `https://TU-USUARIO.github.io/auvin-catalogo/`
- Panel: `https://TU-USUARIO.github.io/auvin-catalogo/admin.html`

## Crear la clave del panel (solo para guardar en GitHub)

1. Entrá a <https://github.com/settings/personal-access-tokens/new> (Settings → Developer settings → Fine-grained tokens → Generate new token).
2. Nombre: `Panel AUVIN`. Elegí cuánto dura.
3. **Repository access → Only select repositories** → marcá `auvin-catalogo`.
4. **Permissions → Repository permissions → Contents → Read and write**.
5. **Generate token**, copiá la clave y pegala en el panel. GitHub la muestra una sola vez.

La clave queda guardada solo en el navegador donde la pegaste. Si perdés el celu o la compu, borrala desde esa página de GitHub y creá otra.

## Imágenes

Las fotos de producto son de referencia y pertenecen a cada marca (se tomaron de las fichas públicas de Fragrantica). Se recortaron y se pusieron sobre el mismo fondo de estudio con los scripts de `_fuentes/` (esa carpeta no se sube): `fondo_web.py` hace el recorte y el estudio, y `texturas_3d.py` guarda el recorte de cada frasco en `img/3d/` para el modelo 3D.
