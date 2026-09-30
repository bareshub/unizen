import 'dart:math';

import 'package:vector_math/vector_math.dart' as vm;

import '../../core/ui/scene_painter.dart';

class AnimatedScenePainter extends ScenePainter {
  final double elapsedTime;
  final double rotationX;

  const AnimatedScenePainter({
    required super.scene,
    required super.cameraDistance,
    required this.elapsedTime,
    required this.rotationX,
  });

  @override
  vm.Vector3 cameraPosition() => vm.Vector3(
    sin(rotationX) * cameraDistance,
    ScenePainter.cameraHeight,
    -cos(rotationX) * cameraDistance,
  );

  @override
  bool shouldRepaint(covariant AnimatedScenePainter oldDelegate) {
    return oldDelegate.elapsedTime != elapsedTime;
  }
}
