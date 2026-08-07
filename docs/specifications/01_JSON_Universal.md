# 🌍 LIA-Make

# 01 - JSON Universal

> "Un solo lenguaje para representar cualquier aplicación."

---

# Introducción

LIA-Make utiliza un formato universal basado en JSON para representar completamente una aplicación.

Este formato será conocido como:

# LUJ

(LIA Universal JSON)

---

# Objetivo

Representar cualquier aplicación mediante un único archivo independiente del lenguaje de programación.

El Canvas nunca generará Flutter.

Nunca generará Python.

Nunca generará código.

El Canvas únicamente genera LUJ.

Posteriormente, distintos motores traducen LUJ hacia tecnologías específicas.

---

# Filosofía

Canvas

↓

LUJ

↓

Flutter Engine

↓

FastAPI Engine

↓

Node Engine

↓

React Engine

↓

Docker Engine

↓

README Engine

↓

Deploy Engine

---

# Ventajas

Separación total entre:

Visualización

Arquitectura

Código

---

Permite exportar hacia múltiples tecnologías.

Sin modificar el Canvas.

---

# Estructura General

```json
{
  "project": {},
  "settings": {},
  "theme": {},
  "architecture": {},
  "nodes": [],
  "connections": [],
  "assets": [],
  "services": [],
  "ai": {},
  "metadata": {}
}
```

---

# Project

Información principal.

```json
{
"name":"Veterinaria App",

"id":"app_001",

"version":"1.0.0",

"author":"Miguel",

"description":"Sistema para clínicas veterinarias."
}
```

---

# Settings

Configuraciones generales.

```json
{

"platforms":[

"android",

"ios",

"web"

],

"offline":false,

"darkMode":true

}
```

---

# Theme

```json
{

"primary":"#8B5CF6",

"secondary":"#4F9DFF",

"font":"Inter"

}
```

---

# Architecture

Describe el proyecto.

```json
{

"type":"mobile",

"backend":"fastapi",

"database":"supabase",

"authentication":"jwt"

}
```

---

# Nodes

Cada componente es un nodo.

```json
{

"id":"login",

"type":"login",

"name":"Inicio de Sesión",

"category":"authentication",

"position":{

"x":420,

"y":180

}

}
```

---

# Node Structure

Todos los nodos compartirán esta estructura.

```json
{

"id":"",

"type":"",

"category":"",

"name":"",

"description":"",

"icon":"",

"color":"",

"position":{

"x":0,

"y":0

},

"size":{

"width":320,

"height":180

},

"inputs":[],

"outputs":[],

"properties":{},

"metadata":{}

}
```

---

# Connections

Representan flujo.

Nunca código.

```json
{

"id":"connection01",

"from":"login",

"to":"dashboard",

"type":"success"

}
```

---

# Assets

```json
{

"images":[],

"icons":[],

"fonts":[],

"sounds":[],

"videos":[]

}
```

---

# Services

Servicios externos.

```json
{

"stripe":true,

"firebase":false,

"supabase":true

}
```

---

# AI

Información generada por la IA.

```json
{

"summary":"",

"recommendations":[],

"documentation":"",

"healthScore":95

}
```

---

# Metadata

Información técnica.

```json
{

"createdAt":"",

"updatedAt":"",

"version":"",

"liaVersion":""

}
```

---

# Node Categories

UI

Backend

Database

Cloud

Authentication

Payments

AI

Marketplace

Automation

Settings

Custom

---

# Coordenadas

Todos los nodos utilizan.

```text
x

y
```

Como Figma.

---

# IDs

Todos los IDs son UUID.

Nunca nombres.

Ejemplo.

```text
9f8d42af-....

```

---

# Relaciones

Los nodos nunca almacenan referencias directas.

Siempre mediante IDs.

---

# Versionado

Cada archivo LUJ posee.

Version.

Migration.

Compatibility.

---

# Compatibilidad

El mismo LUJ podrá exportarse a.

Flutter

FastAPI

Node

React

Vue

Angular

Electron

Docker

Python

Flutter Web

Windows

Linux

macOS

---

# Motores

Los motores nunca modifican LUJ.

Solo lo leen.

Ejemplo.

Canvas

↓

LUJ

↓

Flutter Engine

↓

Código Flutter

---

# Beneficios

Un solo archivo representa toda la aplicación.

El proyecto puede migrar de tecnología sin reconstruirse.

La IA entiende completamente la aplicación.

Los motores permanecen independientes.

---

# Regla Suprema

El Canvas jamás conocerá un lenguaje de programación.

Solo conocerá LUJ.

---

# Futuro

LUJ será el estándar interno de todo el ecosistema LIA.

LIA-Reverse.

LIA-Publish.

LIA-Train.

LIA-EmployX.

Todos compartirán este formato.

---

© LIA-Tech

Let's make your apps come true.