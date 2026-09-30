import 'package:hooks/hooks.dart';
import 'package:flutter_scene/build_hooks.dart';

void main(List<String> args) {
  build(args, (input, output) async {
    // Import the .glb sources under assets/ into flutter_scene_generated/.
    // They are loaded back by source path with loadScene.
    buildScenes(buildInput: input, buildOutput: output);
    await buildMaterials(buildInput: input, buildOutput: output);
  });
}
