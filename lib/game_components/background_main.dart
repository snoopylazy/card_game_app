import 'dart:ui';

import 'package:card_app/main.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Background extends PositionComponent with TapCallbacks, DragCallbacks{

  Function? onTap;

  @override
  bool get debugMode => kDebugMode;

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    canvas.drawColor(Colors.purple, BlendMode.hardLight);
    super.render(canvas);
  }

  @override
  void onTapUp(TapUpEvent event) {
    onTap?.call();
    super.onTapUp(event);
  }
}