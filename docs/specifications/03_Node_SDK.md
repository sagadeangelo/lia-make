# 🧩 LIA-Make

# 03 - Node SDK

> "Los nodos son el lenguaje de LIA-Make."

---

# Introducción

El Node SDK permite crear nuevos nodos para LIA-Make sin modificar el núcleo de la plataforma.

Todo nodo oficial o desarrollado por terceros deberá cumplir esta especificación.

El objetivo es garantizar compatibilidad, estabilidad y una experiencia consistente.

---

# Filosofía

Los nodos no son componentes gráficos.

Son pequeñas unidades funcionales.

Cada nodo representa una capacidad del sistema.

El Canvas únicamente los representa.

---

# Objetivos

Permitir que cualquier desarrollador pueda crear nuevos nodos.

Mantener compatibilidad entre versiones.

Separar completamente la lógica del renderizado.

Garantizar una experiencia uniforme.

---

# Arquitectura

Node SDK

↓

Node Manifest

↓

Runtime

↓

Canvas Engine

↓

Inspector

↓

AI

↓

Export Engine

---

# Anatomía de un Nodo

Todo nodo debe estar compuesto por.

Manifest

Metadata

Properties

Ports

Renderer

Behavior

Documentation

Examples

---

# Manifest

Es la identidad del nodo.

Ejemplo.

```json
{
  "id": "lia.ui.button",

  "name": "Button",

  "version": "1.0.0",

  "category": "ui",

  "author": "LIA-Tech"
}
```

---

# Metadata

Describe el nodo.

```json
{
  "displayName":"Button",

  "description":"Interactive button.",

  "icon":"button",

  "color":"purple",

  "keywords":[
      "button",
      "click",
      "ui"
  ]
}
```

---

# Categorías

UI

Backend

Database

Cloud

Authentication

Payments

AI

Automation

Marketplace

Media

Settings

Custom

---

# Propiedades

Todo nodo define.

Propiedades editables.

Ejemplo.

```json
{
"title":"Login",

"icon":"login",

"enabled":true
}
```

---

# Entradas

Representan la información que recibe.

```json
[
    "user",
    "token"
]
```

---

# Salidas

Representan la información que produce.

```json
[
    "authenticatedUser"
]
```

---

# Eventos

Los nodos pueden emitir eventos.

Ejemplo.

onClick

onSuccess

onError

onLoad

onSave

---

# Renderer

Cada nodo posee un Renderer.

El Renderer únicamente dibuja.

Nunca contiene lógica.

---

# Behavior

Aquí vive la lógica.

Ejemplo.

Validaciones.

Transformaciones.

Reglas.

No renderiza.

---

# Inspector

El SDK expone automáticamente.

Descripción.

Propiedades.

Documentación.

Dependencias.

Versiones.

Costo.

IA.

---

# Documentación

Todo nodo deberá incluir.

¿Qué hace?

¿Por qué existe?

¿Cuándo utilizarlo?

Ejemplos.

Buenas prácticas.

Alternativas.

---

# IA

Todo nodo debe ser entendible por la IA.

Ejemplo.

```json
{

"purpose":"Authentication",

"learningLevel":"Beginner",

"summary":"Allows users to login."

}
```

---

# Costos

Los nodos pueden declarar.

Costo estimado.

Servicios requeridos.

Alternativas gratuitas.

---

# Compatibilidad

Cada nodo declara.

Flutter

React

Vue

Node

Python

FastAPI

Docker

Web

Android

iOS

Desktop

---

# Versionado

Todo nodo sigue Semantic Versioning.

1.0.0

1.1.0

2.0.0

---

# Dependencias

Los nodos pueden depender de otros.

Ejemplo.

JWT

↓

Authentication

↓

User

---

# Validaciones

El SDK valida automáticamente.

Puertos.

Categorías.

Compatibilidad.

Propiedades.

Versiones.

---

# Marketplace

Los nodos podrán distribuirse mediante.

LIA Store.

---

# Firma

Todos los nodos publicados deberán estar firmados digitalmente.

Garantizando.

Autor.

Integridad.

Seguridad.

---

# Instalación

El usuario podrá instalar nodos con un clic.

La IA explicará.

Qué hacen.

Qué agregan.

Qué riesgos tienen.

---

# Sandboxing

Los nodos nunca podrán acceder directamente al sistema.

Todo acceso será controlado por el Runtime.

---

# Runtime

El Runtime administra.

Carga.

Ejecución.

Versiones.

Permisos.

Errores.

Eventos.

---

# Permisos

Cada nodo declara.

Internet

Archivos

Micrófono

Cámara

Ubicación

Bluetooth

Notificaciones

Etc.

---

# Seguridad

El SDK impedirá.

Código malicioso.

Permisos ocultos.

Acceso no autorizado.

---

# Testing

Todo nodo podrá incluir.

Pruebas.

Mocks.

Ejemplos.

Casos de uso.

---

# Plantillas

El SDK incluirá plantillas para crear.

UI Nodes

Backend Nodes

Database Nodes

AI Nodes

Automation Nodes

---

# Extensibilidad

Los nodos pueden.

Crear nuevos paneles.

Agregar herramientas.

Agregar propiedades.

Agregar asistentes.

Agregar documentación.

Sin modificar LIA-Make.

---

# Regla Suprema

Todo nodo debe sentirse como si hubiera sido creado por el equipo oficial de LIA-Make.

No importa quién sea su autor.

---

# Visión

Queremos que exista una comunidad mundial creando nodos.

Empresas.

Universidades.

Desarrolladores independientes.

Todos hablando el mismo lenguaje.

---

# Futuro

Un nodo desarrollado hoy.

Debe seguir funcionando dentro de diez años.

La estabilidad es parte de la plataforma.

---

© LIA-Tech

Let's make your apps come true.