import 'dart:math';

import 'package:flutter/material.dart';

class CircularDashedBorder extends StatelessWidget {
  final Function() onTap;
  final Color color;
  final double size;
  final double width;
  final Widget icon;

  const CircularDashedBorder(
      {Key key,
      this.color = Colors.blue,
      this.size = 40,
      this.width = 2.5,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          if (icon == null) Container() else icon,
          CustomPaint(
            size: Size(size, size),
            foregroundPainter: MyPainter(completeColor: color, width: width),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(500),
            onTap: () {
              if (onTap != null) onTap();
            },
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor = Colors.transparent;
  Color completeColor;
  double width;
  MyPainter({this.completeColor, this.width});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint complete = Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = min(size.width / 2, size.height / 2);
    final percent = (size.width * 0.001) / 2;

    final double arcAngle = 3 * pi * percent;

    for (var i = 0; i < 30; i++) {
      final init = (-pi / 2) * (i / 2);

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), init,
          arcAngle, false, complete);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
