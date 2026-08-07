# 📦 LIA-Make

# 07 - LIA Project Format (LPF)

> "Un proyecto. Un archivo. Todo el ecosistema."

---

# Introducción

Todos los proyectos creados con LIA-Make utilizan un formato propio denominado:

LPF

(LIA Project Format)

La extensión oficial será.

.lia

---

# Objetivo

Representar completamente un proyecto utilizando un único archivo portable.

El usuario nunca deberá preocuparse por carpetas.

Configuraciones.

Dependencias.

Metadatos.

Todo vive dentro del archivo.

---

# Filosofía

Un proyecto.

↓

Un archivo.

↓

Todo incluido.

---

# ¿Qué es un archivo .lia?

Un archivo .lia es un contenedor comprimido.

Internamente utiliza ZIP.

Su estructura está organizada mediante carpetas estándar.

---

# Ventajas

Portable.

Versionable.

Fácil de respaldar.

Fácil de compartir.

Fácil de importar.

---

# Estructura

```
mi_app.lia

│

├── manifest.json

├── project.luj

├── assets/

│

├── images/

├── icons/

├── fonts/

├── audio/

│

├── documentation/

│

├── README.md

├── architecture.md

├── roadmap.md

│

├── snapshots/

│

├── canvas/

│

├── metadata/

│

└── history/
```

---

# manifest.json

Describe el proyecto.

Ejemplo.

```json
{

"id":"",

"name":"",

"version":"1.0.0",

"liaVersion":"1.0.0",

"createdAt":"",

"updatedAt":""

}
```

---

# project.luj

Contiene.

Canvas.

Nodos.

Conexiones.

Arquitectura.

Configuración.

Todo el proyecto.

---

# Assets

Contiene.

Iconos.

Imágenes.

Audios.

Videos.

Fuentes.

---

# Documentation

README.

Arquitectura.

Casos de uso.

Roadmap.

Notas.

---

# Metadata

Información interna.

UUID.

Autor.

Versiones.

Checksums.

---

# History

Snapshots.

Timeline.

Cambios.

Comentarios.

---

# Snapshots

El sistema podrá guardar.

Versiones automáticas.

Antes de cambios importantes.

---

# Compatibilidad

Cada archivo declara.

Versión mínima.

Versión máxima.

Migraciones.

---

# Versionado

Semantic Versioning.

Proyecto.

LUJ.

LIA.

Plugins.

Todo independiente.

---

# Checksums

Cada archivo importante tendrá.

SHA256.

Para detectar corrupción.

---

# Firma Digital

Opcional.

Permite verificar.

Autor.

Integridad.

Marketplace.

---

# Compresión

El usuario nunca verá archivos internos.

Siempre manipulará.

Proyecto.lia

---

# Importación

El sistema valida.

Compatibilidad.

Versiones.

Dependencias.

Plugins.

Assets.

---

# Exportación

Todo proyecto puede exportarse nuevamente.

Sin pérdida.

---

# Colaboración

En futuras versiones.

Un archivo .lia podrá fusionarse.

Compararse.

Resolver conflictos.

---

# Dependencias

El proyecto declara.

Plugins.

Builders.

Temas.

Nodos.

Versiones.

---

# Seguridad

Nunca almacenar.

Contraseñas.

Tokens.

Secrets.

Claves privadas.

Solo referencias.

---

# Cloud

El mismo archivo podrá sincronizarse.

LIA Cloud.

Git.

Drive.

Dropbox.

OneDrive.

---

# Marketplace

El Marketplace almacena proyectos.

No carpetas.

No ZIPs.

Solo.

.lia

---

# Beneficios

Un creador puede.

Guardar.

Compartir.

Respaldar.

Mover.

Versionar.

Publicar.

Con un solo archivo.

---

# Responsabilidades

El formato.

Nunca conoce Flutter.

Nunca conoce Python.

Nunca conoce React.

Solo conoce.

LUJ.

Assets.

Metadata.

---

# Regla Suprema

Todo proyecto del ecosistema LIA debe poder abrirse mediante un único archivo.

---

# Futuro

En el futuro.

Todos los productos de LIA-Tech utilizarán exactamente el mismo formato.

LIA-Make.

LIA-Reverse.

LIA-Publish.

LIA-Train.

LIA-EmployX.

Todos comprenderán.

.lia

---

© LIA-Tech

Let's make your apps come true.