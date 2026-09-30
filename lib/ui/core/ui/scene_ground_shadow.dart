import 'dart:math';

import 'package:flutter/material.dart';

import '../themes/colors.dart';

/// Width of the shadow, relative to the shortest side of the paint area.
const double _widthFactor = 0.4;

/// Height of the shadow, relative to its own width. Flattening the oval is what
/// makes it read as a shadow cast on the ground plane rather than a dark blob.
const double _flatness = 0.16;

/// Vertical position of the shadow, relative to the paint area. It sits almost
/// at the bottom, where the scene painters anchor the model's feet.
const double _verticalPosition = 0.98;

const double _opacity = 0.2;
const double _blurSigma = 2.0;

/// Draws a soft, flattened oval beneath a 3D model to ground it on the scene
/// floor.
///
/// Must be painted *before* the scene itself, so that the model covers the part
/// of the shadow it stands on.
void paintGroundShadow(Canvas canvas, Size size) {
  final width = min(size.width, size.height) * _widthFactor;

  final paint = Paint()
    ..color = AppColors.black1.withValues(alpha: _opacity)
    ..maskFilter = const MaskFilter.blur(BlurStyle.normal, _blurSigma);

  canvas.drawOval(
    Rect.fromCenter(
      center: Offset(size.width / 2, size.height * _verticalPosition),
      width: width,
      height: width * _flatness,
    ),
    paint,
  );
}
