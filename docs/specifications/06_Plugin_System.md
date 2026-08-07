# 🧩 LIA-Make

# 06 - Plugin System (Extensions)

> "LIA-Make nunca estará terminado.
>
> Siempre podrá crecer."

---

# Introducción

El Extension System permite ampliar las capacidades de LIA-Make sin modificar el núcleo de la plataforma.

Toda funcionalidad adicional deberá implementarse mediante extensiones.

El Core debe permanecer pequeño.

Las capacidades crecen mediante Extensions.

---

# Filosofía

Core pequeño.

Extensiones poderosas.

---

# Objetivos

Permitir que terceros amplíen la plataforma.

Mantener el Core estable.

Evitar forks.

Separar responsabilidades.

Crear un Marketplace de extensiones.

---

# Arquitectura

Usuario

↓

Extension Manager

↓

Runtime

↓

Permissions

↓

Extensions

↓

Core APIs

↓

Canvas

↓

LUJ

---

# Componentes

Extension Manager

Extension Runtime

Permission Manager

Sandbox

API Gateway

Lifecycle Manager

Marketplace

Version Manager

---

# Extension Manager

Responsabilidad.

Instalar.

Actualizar.

Eliminar.

Activar.

Desactivar.

Extensiones.

---

# Runtime

Responsabilidad.

Ejecutar extensiones.

Aislar procesos.

Administrar memoria.

Detectar errores.

---

# Sandbox

Toda extensión se ejecuta en un entorno aislado.

Nunca puede acceder directamente al sistema operativo.

Nunca puede modificar el Core.

---

# Lifecycle

Cada extensión sigue un ciclo.

Installed

↓

Loaded

↓

Initialized

↓

Running

↓

Paused

↓

Updated

↓

Uninstalled

---

# Manifest

Toda extensión contiene un archivo.

extension.json

Ejemplo.

```json
{
  "id":"lia.supabase",

  "name":"Supabase",

  "version":"1.0.0",

  "author":"LIA-Tech",

  "permissions":[

      "internet",

      "storage"

  ]
}
```

---

# Categorías

Nodes

Builders

AI Skills

Templates

Themes

Exporters

Integrations

Animations

Panels

Tools

Marketplace

Education

---

# Tipos de Extensiones

## Node Extension

Agrega nuevos nodos.

---

## Builder Extension

Permite exportar a nuevas tecnologías.

---

## AI Extension

Agrega nuevas habilidades a la IA.

---

## Theme Extension

Nuevos temas visuales.

---

## Panel Extension

Agrega nuevos paneles al Canvas.

---

## Integration Extension

Conecta servicios externos.

---

## Tool Extension

Agrega nuevas herramientas.

---

## Language Extension

Nuevos idiomas.

---

# Permisos

Las extensiones deben declarar.

Internet

Storage

Clipboard

Camera

Microphone

Notifications

Bluetooth

Serial

Location

Custom APIs

---

# Seguridad

Ninguna extensión obtiene permisos automáticamente.

Siempre deben aprobarse.

---

# Firma Digital

Toda extensión publicada deberá estar firmada.

Autor.

Versión.

Checksum.

Integridad.

---

# Marketplace

Las extensiones podrán distribuirse desde.

LIA Store.

---

# Instalación

Un clic.

La IA explica.

Qué agrega.

Qué permisos necesita.

Qué riesgos existen.

---

# API Pública

El Core expone APIs.

Canvas API

LUJ API

Node API

AI API

Export API

Theme API

Project API

Marketplace API

Logger API

---

# Eventos

Las extensiones pueden escuchar eventos.

ProjectOpened

ProjectSaved

NodeCreated

NodeDeleted

ExportStarted

ExportFinished

MarketplacePublished

AIResponse

UserLogin

---

# Hooks

Before Export

After Export

Before Save

After Save

Before Publish

After Publish

Before NodeCreate

After NodeCreate

---

# Dependencias

Las extensiones pueden depender de otras.

El Runtime resuelve automáticamente.

Compatibilidad.

Orden de carga.

Versiones.

---

# Actualizaciones

Las extensiones podrán actualizarse.

Automáticamente.

Manualmente.

Programadas.

---

# Compatibilidad

Semantic Versioning.

Compatibilidad mínima.

Compatibilidad máxima.

Migraciones.

---

# IA

Las extensiones pueden registrar.

Nuevos agentes.

Nuevas herramientas.

Nuevas acciones.

Nuevos prompts.

Nuevos conocimientos.

---

# UI

Las extensiones pueden registrar.

Botones.

Paneles.

Inspector.

Diálogos.

Menús.

Atajos.

Comandos.

---

# Templates

Las extensiones pueden agregar.

Plantillas.

Arquitecturas.

Aplicaciones.

Boilerplates.

---

# Builders

Las extensiones pueden registrar.

Flutter Builder

React Builder

Unity Builder

Godot Builder

Laravel Builder

Arduino Builder

Etc.

---

# Sandboxing

Una extensión nunca puede.

Eliminar proyectos.

Modificar LUJ directamente.

Acceder al disco completo.

Leer información privada.

Ejecutar procesos arbitrarios.

---

# Logs

Toda extensión posee.

Logs.

Errores.

Tiempo de ejecución.

Uso de memoria.

Uso de CPU.

---

# Rendimiento

El Runtime puede.

Pausar.

Reiniciar.

Deshabilitar.

Extensiones problemáticas.

---

# Marketplace

Las extensiones podrán ser.

Gratuitas.

Premium.

Open Source.

Enterprise.

---

# Desarrollo

LIA proporcionará.

CLI.

SDK.

Templates.

Testing.

Debugging.

Documentación.

---

# Futuro

Las empresas podrán crear.

Suites completas.

Ejemplo.

Stripe Extension

↓

Node

↓

Builder

↓

Dashboard

↓

Analytics

↓

Deploy

↓

AI Skills

Todo dentro de una sola extensión.

---

# Responsabilidades del Core

Nunca conocer extensiones específicas.

Solo conocer interfaces.

---

# Regla Suprema

Una extensión nunca debe romper la experiencia de usuario.

Debe sentirse como una parte natural de LIA-Make.

---

# Visión

Queremos construir una plataforma donde miles de desarrolladores amplíen LIA-Make.

Sin tocar el núcleo.

Sin romper compatibilidad.

Sin perder calidad.

---

© LIA-Tech

Let's make your apps come true.