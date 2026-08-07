# ✨ LIA-Make

# 09 - Animation System

> "Las animaciones no decoran la interfaz.
>
> Explican lo que está sucediendo."

---

# Introducción

El Animation System (LAS - LIA Animation System) es responsable de todas las animaciones de LIA-Make.

Su objetivo no es impresionar.

Su objetivo es comunicar.

Cada animación debe tener un propósito.

---

# Filosofía

Toda animación responde una pregunta.

¿Qué ocurrió?

¿Qué está ocurriendo?

¿Qué ocurrirá?

Si no responde alguna de ellas.

No debe existir.

---

# Objetivos

Crear una experiencia viva.

Guiar al usuario.

Reducir la carga cognitiva.

Eliminar incertidumbre.

Transmitir estado.

---

# Principios

## Movimiento con propósito

Nada se mueve porque sí.

Cada movimiento comunica.

---

## Menos es más

La elegancia vale más que el espectáculo.

---

## Suavidad

Toda transición debe sentirse natural.

Nunca brusca.

Nunca robótica.

---

## Consistencia

Una misma acción siempre genera la misma respuesta visual.

---

# Arquitectura

User Action

↓

Event Bus

↓

Animation Manager

↓

Animation Queue

↓

Renderer

↓

Pantalla

---

# Componentes

Animation Manager

Animation Queue

Timeline

Animation Library

Transition Engine

Physics Engine

Celebration Engine

Avatar Animation Engine

---

# Tipos de Animaciones

Hover

Focus

Selection

Movement

Creation

Deletion

Execution

Warning

Error

Success

Celebration

Idle

Loading

---

# Duraciones

Instant

100 ms

---

Fast

150 ms

---

Normal

200 ms

---

Medium

300 ms

---

Slow

500 ms

---

Long

800 ms

Nunca superar 1000 ms salvo casos excepcionales.

---

# Curvas

Ease Out

Predeterminada.

---

Ease In Out

Movimientos.

---

Spring

Drag & Drop.

---

Bounce

Celebraciones.

---

Linear

Solo para cargas continuas.

---

# Hover

El componente.

Se eleva ligeramente.

Aumenta glow.

Escala.

1.02

---

# Click

Escala.

0.96

↓

1.00

---

# Drag

Glow aumenta.

Rotación ligera.

Escala.

1.03

Sombra más profunda.

---

# Drop

Pequeño rebote.

Glow disminuye.

---

# Selección

Borde luminoso.

Fade.

Escala muy ligera.

---

# Conexiones

Cuando transmiten datos.

Un flujo luminoso recorre la línea.

---

# Nodos

Estado Idle.

Respiración muy lenta.

---

Estado Ejecutando.

Pulso.

---

Estado Error.

Latido rojo.

---

Estado Optimizado.

Brillo verde.

---

# Avatar

Respira.

Parpadea.

Mueve ligeramente la cabeza.

Sigue el cursor.

Mira los nodos.

Celebra.

Piensa.

Nunca permanece inmóvil.

---

# Canvas

El desplazamiento.

Tiene inercia.

---

El Zoom.

Es suave.

Nunca instantáneo.

---

# Grid

Movimiento muy ligero.

Nunca distrae.

---

# Loading

Nunca usar spinner por defecto.

Preferir.

Skeletons.

Progreso.

Indicadores vivos.

---

# Éxito

Check.

Glow verde.

Desaparición suave.

---

# Error

Sacudida muy ligera.

Pulso rojo.

Explicación IA.

---

# Celebraciones

Solo en momentos importantes.

Primer Proyecto.

Primera Exportación.

Primera Venta.

Nunca exagerar.

---

# Microinteracciones

Guardar.

Check.

Nodo creado.

Pequeño destello.

Conexión creada.

Flujo luminoso.

Marketplace.

Confeti elegante.

---

# IA

Cuando piensa.

Pequeña animación.

Nunca escribir palabra por palabra.

Mostrar intención.

Luego respuesta.

---

# Física

Los movimientos utilizan.

Aceleración.

Desaceleración.

Pequeña inercia.

---

# Animaciones Prohibidas

Rotaciones exageradas.

Parpadeos rápidos.

Zoom agresivo.

Movimiento continuo sin propósito.

Animaciones que dificulten el trabajo.

---

# Rendimiento

Nunca comprometer.

60 FPS.

Las animaciones deben degradarse automáticamente si el hardware lo requiere.

---

# Accesibilidad

Modo Reducir Movimiento.

Desactiva.

Celebraciones.

Respiración.

Glow dinámico.

Animaciones largas.

---

# Plugins

Las extensiones pueden registrar.

Nuevas animaciones.

Siempre respetando.

Duraciones.

Curvas.

Estilo visual.

---

# Design Tokens

Todas las animaciones utilizan.

Animation Tokens.

Nunca valores fijos.

---

# Estados

Idle

Hover

Pressed

Focused

Selected

Executing

Completed

Warning

Error

Disabled

Celebrating

---

# Responsabilidades

El Animation System nunca modifica lógica.

Nunca toma decisiones.

Solo representa visualmente los eventos del sistema.

---

# Regla Suprema

Una buena animación pasa desapercibida.

Una mala animación distrae.

---

# Visión

Queremos que los usuarios recuerden LIA-Make por la sensación que transmite.

No por efectos llamativos.

Sino porque todo responde con vida.

Todo tiene ritmo.

Todo se siente natural.

---

© LIA-Tech

Let's make your apps come true.