# 03 — Node States

> A node is never static.
>
> It constantly communicates its current state.

---

# Introduction

Nodes are living components.

Every node continuously informs the user about its condition.

The user should understand what is happening without opening logs,
without reading console messages,
and without debugging code.

The interface itself becomes the debugger.

---

# Philosophy

A node should never feel dead.

Even when idle,
it should communicate presence.

When active,
it should communicate energy.

When failing,
it should communicate the problem immediately.

---

# State Hierarchy

Nodes can exist in multiple states.

Some states are temporary.

Some are permanent.

Only one primary state can exist at a time.

Secondary states may coexist.

---

# Primary States

---

## Idle

Description

The default state.

Nothing is happening.

Visual

Soft shadows.

Normal brightness.

Slow breathing light.

Animation

Very subtle.

Almost imperceptible.

Sound

None.

---

## Hover

Description

The cursor is over the node.

Visual

Slight scale increase.

Glow appears.

Shadow becomes stronger.

Border illuminates.

Animation

150 ms

Smooth.

Sound

Tiny hover sound.

Almost silent.

---

## Focused

Description

The node currently has keyboard focus.

Visual

Outer ring.

Slight glow.

Animation

Soft pulse.

---

## Selected

Description

The node has been selected.

Visual

Bright border.

Category color becomes stronger.

Connection ports become visible.

Animation

Short pulse.

Sound

Soft confirmation click.

---

## Dragging

Description

The user is moving the node.

Visual

Shadow grows.

Node lifts.

Scale increases slightly.

Rotation may tilt a few degrees.

Nearby compatible ports glow.

Animation

Responsive.

Physics inspired.

Sound

Soft movement.

---

## Connecting

Description

A connection is being created.

Visual

Ports illuminate.

Cable follows cursor.

Possible destinations glow.

Animation

Magnetic attraction.

Sound

Very subtle energy sound.

---

## Connected

Description

Connection successfully established.

Visual

Small flash.

Brief pulse.

Connection locks in place.

Animation

Quick.

Satisfying.

Sound

Metallic magnetic click.

The sound should feel rewarding.

---

## Invalid Connection

Description

The attempted connection is not valid.

Visual

Brief red flash.

Tiny shake.

Animation

Fast.

Never aggressive.

Sound

Short dry click.

No alarm.

No punishment.

---

## Warning

Description

The node works but requires attention.

Examples

Missing parameter.

Optional configuration.

Deprecated node.

Visual

Amber glow.

Small warning badge.

Animation

Slow pulse.

---

## Error

Description

Execution cannot continue.

Visual

Red border.

Red glow.

Error badge.

Animation

Gentle shake.

Repeated slowly.

Sound

Soft warning.

Never stressful.

---

## Running

Description

The node is currently executing.

Visual

Energy moving inside the node.

Connection cables animate.

Animation

Continuous.

Fluid.

Sound

None.

Visual feedback is sufficient.

---

## Waiting

Description

The node is waiting for input.

Visual

Slow breathing.

Dim glow.

Animation

Very calm.

---

## Success

Description

Execution completed successfully.

Visual

Green flash.

Glow fades naturally.

Animation

Single pulse.

Sound

Soft positive confirmation.

---

## Disabled

Description

Temporarily inactive.

Visual

Lower opacity.

Muted colors.

No glow.

Animation

None.

---

## Locked

Description

Unavailable.

Visual

Padlock icon.

Darkened appearance.

Animation

None.

---

## Premium

Description

Requires premium access.

Visual

Golden frame.

Crystal effect.

Elegant shine.

Animation

Slow reflective highlight.

---

## AI Assisted

Description

The node is currently receiving help from LIA.

Visual

Purple particles.

Subtle holographic effect.

Animation

Continuous.

Elegant.

---

# Secondary States

A node may simultaneously contain:

Pinned

Favorite

New

Updated

Deprecated

Experimental

Beta

Community

Verified

Template

---

# Notification Badges

Badges must never hide the node.

Examples

✓ Verified

★

Favorite

NEW

Recently added

BETA

Experimental

⚠

Requires attention

---

# Visual Communication

Every state changes multiple properties.

Examples

Border

Glow

Shadow

Particles

Scale

Opacity

Animation

Sound

Never rely on only one indicator.

---

# Transition Philosophy

State transitions should feel natural.

No abrupt changes.

Every animation should explain the transition.

Not decorate it.

---

# Execution Feedback

When an application runs:

Nodes activate in sequence.

Connections transmit energy.

Outputs illuminate.

Completed nodes gently fade back to idle.

The user can literally watch the application thinking.

---

# Accessibility

Every state must be understandable through:

Color

Motion

Shape

Iconography

Text

No information should depend exclusively on color.

---

# Emotional Design

Correct actions feel rewarding.

Incorrect actions feel educational.

The interface never punishes.

It guides.

---

# Final Thought

Nodes are not static interface elements.

They are intelligent components constantly communicating with the creator.

Every state exists to make software creation feel intuitive,
visual,
and alive.

---

# Design Principle

If a user can understand what every node is doing
without opening a debugger,

the interface has succeeded.