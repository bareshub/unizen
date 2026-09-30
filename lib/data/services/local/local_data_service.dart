import '../../../domain/models/avatar/avatar.dart';
import '../../../domain/models/animated_scene/animated_scene.dart';
import '../../../domain/models/boss/boss.dart';
import '../../../domain/models/exam/exam.dart';
import 'local_data_service_interface.dart';

class HardcodedLocalDataService implements LocalDataService {
  @override
  List<Exam> getExams() {
    return [
      // Exam(
      //   name: 'MACHINE LEARNING',
      //   maxHealth: 5000,
      //   health: 2780,
      //   boss: getBosses().elementAt(4),
      // ),
      Exam(
        name: 'AUTOMATION AND TECHNOLOGY',
        maxHealth: 5000,
        health: 2780,
        boss: getBosses().elementAt(5),
      ),
      Exam(name: 'PHYSICS', maxHealth: 5000, health: 4878, boss: getBosses().elementAt(1)),
      Exam(name: 'COMPUTER SCIENCE', maxHealth: 5000, health: 1280, boss: getBosses().elementAt(0)),
      Exam(
        name: 'ARTIFICIAL INTELLIGENCE',
        maxHealth: 5000,
        health: 2780,
        boss: getBosses().elementAt(6),
      ),
      Exam(
        name: 'AUTOMATION AND TECHNOLOGY',
        maxHealth: 5000,
        health: 2780,
        boss: getBosses().elementAt(5),
      ),
      Exam(name: 'PHYSICS', maxHealth: 5000, health: 4878, boss: getBosses().elementAt(1)),
      Exam(name: 'COMPUTER SCIENCE', maxHealth: 5000, health: 1280, boss: getBosses().elementAt(0)),
      // Exam(
      //   name: 'AUTOMATION',
      //   maxHealth: 5000,
      //   health: 2780,
      //   boss: getBosses().elementAt(3),
      // ),
      // Exam(
      //   name: 'AI ENTREPRENEURSHIP',
      //   maxHealth: 5000,
      //   health: 2780,
      //   boss: getBosses().elementAt(2),
      // ),
    ];
  }

  @override
  List<Boss> getBosses() {
    return [
      Boss(
        animatedScene: AnimatedScene(
          modelAssetPath: 'assets/models/tvwoman.glb',
          cameraDistance: 24,
        ),
        ects: 3,
      ),
      Boss(
        animatedScene: AnimatedScene(
          modelAssetPath: 'assets/models/cameraman_supreme_god.glb',
          cameraDistance: 28,
        ),
        ects: 4,
      ),
      Boss(
        animatedScene: AnimatedScene(
          modelAssetPath: 'assets/models/skibidi_yisus.glb',
          cameraDistance: 22,
        ),
        ects: 5,
      ),
      Boss(
        animatedScene: AnimatedScene(
          modelAssetPath: 'assets/models/tv_man_supreme.glb',
          cameraDistance: 16,
        ),
        ects: 6,
      ),
      Boss(
        animatedScene: AnimatedScene(
          modelAssetPath: 'assets/models/tvman_multiple_supreme.glb',
          cameraDistance: 20,
        ),
        ects: 7,
      ),
      Boss(
        animatedScene: AnimatedScene(
          modelAssetPath: 'assets/models/tvman_multiple.glb',
          cameraDistance: 24,
        ),
        ects: 8,
      ),
      Boss(
        animatedScene: AnimatedScene(
          modelAssetPath: 'assets/models/tvman_supreme.glb',
          cameraDistance: 34,
        ),
        ects: 9,
      ),
    ];
  }

  @override
  Avatar getAvatar() {
    return Avatar(
      animatedScene: AnimatedScene(
        modelAssetPath: 'assets/models/minecraft_sprunki_oren_after_blender.glb',
        defaultAnimation: SceneAnimation.walk,
        cameraDistance: 7,
      ),
    );
  }
}
