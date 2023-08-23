import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/constants.dart';


class ArcPainter extends CustomPainter {
  final double startAngle;
  final double sweepAngle;
  final Color color;

  ArcPainter({required this.startAngle, required this.sweepAngle, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.5;

    final paint2 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.5;

    final paint3 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.5;

    final paint3Extension = Paint()
      ..color = const  Color.fromRGBO(234, 233, 240, 1)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.5;

    final paint4 = Paint()
      ..color = const  Color.fromRGBO(234, 233, 240, 1)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.5;

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
    canvas.drawArc(rect, 4.2, sweepAngle, false, paint2);
    canvas.drawArc(rect, 5.255, 0.5, false, paint3);
    canvas.drawArc(rect, 5.5, 0.255, false, paint3Extension);
    canvas.drawArc(rect, 5.85, 0.43, false, paint4);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DashedArcWidget extends StatelessWidget {
  const DashedArcWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 0.7.sw,
        height: 0.7.sw,
        child: CustomPaint(
          painter: ArcPainter(
            startAngle: 3.142,
            sweepAngle: 0.95, // Example: 270 degrees in radians
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
