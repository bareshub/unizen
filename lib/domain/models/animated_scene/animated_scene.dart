import 'package:unizen/domain/models/static_scene/static_scene.dart';

class AnimatedScene extends StaticScene {
  const AnimatedScene({
    required super.modelAssetPath,
    super.environmentIntensity,
    super.environmentExposure,
    super.cameraDistance,
    this.defaultAnimation = SceneAnimation.idle,
    this.fps = 30.0,
  });

  final SceneAnimation defaultAnimation;
  final double fps;
}

enum SceneAnimation { idle, walk, attack, death }
