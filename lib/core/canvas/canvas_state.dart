import 'viewport.dart';

/// ============================================================
/// LIA-Make
/// Canvas State
/// ------------------------------------------------------------
/// Estado completo del Canvas.
///
/// Este objeto representa toda la información necesaria para
/// reconstruir el Canvas en cualquier momento.
///
/// En futuras versiones almacenará:
///
/// • Viewport
/// • Nodos
/// • Conexiones
/// • Selección
/// • Herramienta activa
/// • Grid
/// • Snap
/// • Historial
/// ============================================================

class CanvasState {
  final Viewport viewport;

  const CanvasState({
    required this.viewport,
  });

  /// ----------------------------------------------------------
  /// Estado inicial
  /// ----------------------------------------------------------

  factory CanvasState.initial() {
    return const CanvasState(
      viewport: Viewport.initial(),
    );
  }

  /// ----------------------------------------------------------
  /// Copy With
  /// ----------------------------------------------------------

  CanvasState copyWith({
    Viewport? viewport,
  }) {
    return CanvasState(
      viewport: viewport ?? this.viewport,
    );
  }

  @override
  String toString() {
    return '''
CanvasState(
  viewport: $viewport
)
''';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is CanvasState &&
            runtimeType == other.runtimeType &&
            viewport == other.viewport;
  }

  @override
  int get hashCode => viewport.hashCode;
}