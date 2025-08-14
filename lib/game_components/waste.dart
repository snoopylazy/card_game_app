import 'dart:ui';

import 'package:card_app/main.dart';
import 'package:flame/components.dart';

class Waste extends PositionComponent {
  @override
  bool get debugMode => kDebugMode;


  @override
  void render(Canvas canvas) {

    Paint blackBorderPaint = Paint()
      ..color = Color.fromARGB(255, 99, 48, 38)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRect(Rect.fromLTRB(0, 0, size.x, size.y), blackBorderPaint);
    super.render(canvas);
  }
}
