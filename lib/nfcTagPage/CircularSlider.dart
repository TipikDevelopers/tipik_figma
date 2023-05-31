import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'Utils.dart';
import 'package:circular/circular.dart';

double radius = 50;
double strokeWidth = 5;

class CircularSlider extends StatefulWidget {
  CircularSlider({super.key});

  @override
  State<CircularSlider> createState() => _CircularSliderState();
}

class _CircularSliderState extends State<CircularSlider> {
  Offset _currentDragOffset = Offset.zero;
  double startAngle = toRadian(200);

  double cuurentAngle = 0;
  double totalAngle = toRadian(180);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Size canvasSize = Size(screenSize.width, screenSize.width - 35);
    Offset center = canvasSize.center(Offset.zero);
    return Stack(
      children: [
        CustomPaint(
          child: Container(),
          painter: SliderPainter(startAngle: startAngle),
        ),
        Container(
          padding: EdgeInsets.only(
              top: _currentDragOffset.dx, left: _currentDragOffset.dy),
          child: GestureDetector(
            onPanStart: (details) {
              RenderBox getBox = context.findRenderObject() as RenderBox;
              _currentDragOffset = getBox.globalToLocal(details.globalPosition);
            },
            onPanUpdate: (details) {},
            child: _Knob(),
          ),
        ),
      ],
    );
  }
}

class SliderPainter extends CustomPainter {
  final double startAngle;

  SliderPainter({required this.startAngle});
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = size.center(Offset.zero);

    Rect rect = Rect.fromCircle(center: center, radius: radius);

    var rainbowPaint = Paint()
      ..shader = SweepGradient(colors: colors).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
        rect,
        startAngle,
        -math.pi,
        false,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth);

    canvas.drawArc(rect, startAngle, -math.pi, false, rainbowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _Knob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          shape: BoxShape.circle,
          border:
              Border.all(color: Color.fromRGBO(82, 124, 101, 1), width: 5.0)),
    );
  }
}
