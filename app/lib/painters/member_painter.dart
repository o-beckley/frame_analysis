import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

import 'package:frame_analysis/main.dart';

class MemberPainter extends CustomPainter{
  final Offset position;
  final double rotation;
  final double length;
  final double thickness;
  bool leftHasPin;
  bool rightHasPin;

  MemberPainter({
    required this.position,
    required this.rotation,
    required this.length,
    required this.thickness,
    this.leftHasPin = false,
    this.rightHasPin = false,
  });
  @override
  bool shouldRepaint(MemberPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size){
    // transform the canvas and size the painter
    size = Size(length, thickness);
    canvas.rotate(rotation);
    canvas.translate(position.dx, position.dy);

    const neutralColor = Color(0xffBCBCBC);
    const neutralDark = Color(0xff808080);
    const mainColor =  Color(0xff9BBAC8); // main color
    const shadow = Color(0xff648291); // shadow
    const highlight = Color(0xffC7D8E0); // highlight
    const outline = Color(0xff000000); // outline
    final fillPaint = Paint();
    fillPaint.color = mainColor;
    fillPaint.shader = ui.Gradient.linear(
        Offset.zero,
        Offset(0, size.height),
        [highlight, mainColor, shadow],
        [0, 0.4, 1]
    );
    fillPaint.strokeWidth = 0;
    fillPaint.style = PaintingStyle.fill;

    final strokePaint = Paint();
    strokePaint.style = PaintingStyle.stroke;
    strokePaint.strokeWidth = 1;

    var path = Path();
    path.moveTo(0, - size.height / 2);
    path.lineTo(size.width, - size.height / 2);
    if(rightHasPin){
      path.arcTo(
        Rect.fromLTWH(size.width - size.height/2, -size.height/2, size.height, size.height),
        1.5 * math.pi,
        math.pi,
        false
      );
    }
    else{
      path.lineTo(size.width, size.height / 2);
    }
    path.lineTo(0, size.height / 2);
    if(leftHasPin){
      path.arcTo(
        Rect.fromLTWH(-size.height / 2, -size.height / 2, size.height, size.height),
        0.5 * math.pi,
        math.pi,
        false
      );
    }
    path.close();

    canvas.drawPath(path, fillPaint);
    canvas.drawPath(path, strokePaint);

    // undo transformations
    canvas.translate(-position.dx, -position.dy);
    canvas.rotate(-rotation);
  }
}