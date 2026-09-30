import 'package:flutter/material.dart';
import 'package:flutter_scene/scene.dart';
import 'package:vector_math/vector_math.dart' as vm;

import 'scene_ground_shadow.dart';

/// Shared painting logic for every [Scene] drawn on screen.
///
/// Subclasses only decide where the camera sits; framing, the ground shadow and
/// the render call stay here so that all scenes are presented consistently.
abstract class ScenePainter extends CustomPainter {
  const ScenePainter({required this.scene, required this.cameraDistance});

  /// Height of the camera above the ground plane, so models are framed from
  /// slightly above eye level.
  static const double cameraHeight = 2.0;

  /// The viewport is twice as tall as the widget, which pushes the horizon down
  /// and anchors the model to the bottom of the available space.
  static const double viewportHeightFactor = 2.0;

  final Scene scene;
  final double cameraDistance;

  /// Position of the camera in world space. It always looks at the origin,
  /// where the model is placed.
  vm.Vector3 cameraPosition();

  @override
  void paint(Canvas canvas, Size size) {
    final camera = PerspectiveCamera(
      position: cameraPosition(),
      target: vm.Vector3.zero(),
    );

    final viewport = Rect.fromLTRB(
      0,
      0,
      size.width,
      size.height * viewportHeightFactor,
    );

    paintGroundShadow(canvas, size);
    scene.render(camera, canvas, viewport: viewport);
  }
}
