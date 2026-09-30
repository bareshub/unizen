import 'package:vector_math/vector_math.dart' as vm;

import '../../core/ui/scene_painter.dart';

class StaticScenePainter extends ScenePainter {
  const StaticScenePainter({
    required super.scene,
    required super.cameraDistance,
  });

  @override
  vm.Vector3 cameraPosition() =>
      vm.Vector3(0, ScenePainter.cameraHeight, -cameraDistance);

  @override
  bool shouldRepaint(covariant StaticScenePainter oldDelegate) {
    return false;
  }
}
