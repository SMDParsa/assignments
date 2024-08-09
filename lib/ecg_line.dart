import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AnimatedPathDemo(),
    ));

var bps = 1;

class AnimationPathPainter extends CustomPainter {
  late final Animation<double> _animation;

  AnimationPathPainter(this._animation) : super(repaint: _animation);

  //Make the path of ECG
  Path _createAnyPath(Size size) {
    double startX = 0;
    double startY = 100;
    return Path()
      //first beat
      ..moveTo(startX, startY)
      ..lineTo(startX + 50, startY)
      ..quadraticBezierTo(startX + 60, startY - 20, startX + 70, startY)
      ..lineTo(startX + 80, startY)
      ..lineTo(startX + 85, startY + 10)
      ..lineTo(startX + 90, startY - 50)
      ..lineTo(startX + 100, startY + 50)
      ..lineTo(startX + 110, startY)
      ..quadraticBezierTo(startX + 130, startY - 30, startX + 140, startY)
      ..lineTo(startX + 150, startY)
      ..lineTo(200, startY)

      //second beat
      ..moveTo(startX + 200, startY)
      ..lineTo(startX + 250, startY)
      ..quadraticBezierTo(startX + 260, startY - 20, startX + 270, startY)
      ..lineTo(startX + 280, startY)
      ..lineTo(startX + 285, startY + 10)
      ..lineTo(startX + 290, startY - 50)
      ..lineTo(startX + 300, startY + 50)
      ..lineTo(startX + 310, startY)
      ..quadraticBezierTo(startX + 330, startY - 30, startX + 340, startY)
      ..lineTo(startX + 350, startY)
      ..lineTo(size.width, startY);
    // ..lineTo(startX + 220, startY);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final animationPercent = this._animation.value;

    print("Painting + ${animationPercent} - ${size}");

    final path = createAnimatedPath(_createAnyPath(size), animationPercent);

    final Paint paint = Paint();
    paint.color = Colors.brown;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

Path createAnimatedPath(
  Path originalPath,
  double animationPercent,
) {
  final totalLenght = originalPath
      .computeMetrics()
      .fold(0.0, (previousValue, element) => previousValue + element.length);

  final currentLenght = totalLenght * animationPercent;

  return extractPathUntilLenght(originalPath, currentLenght);
}

Path extractPathUntilLenght(
  Path originalPath,
  double lenght,
) {
  var currentLenght = 0.0;

  final path = new Path();

  var metricsIterator = originalPath.computeMetrics().iterator;

  while (metricsIterator.moveNext()) {
    var metric = metricsIterator.current;

    var nextLenght = currentLenght + metric.length;

    final isLastSegment = nextLenght > lenght;
    if (isLastSegment) {
      final remainingLenght = lenght - currentLenght;
      final pathSegment = metric.extractPath(0.0, remainingLenght);

      path.addPath(pathSegment, Offset.zero);
      break;
    } else {
      final pathSegment = metric.extractPath(0.0, metric.length);
      path.addPath(pathSegment, Offset.zero);
    }
    currentLenght = nextLenght;
  }
  return path;
}

class AnimatedPathDemo extends StatefulWidget {
  const AnimatedPathDemo({super.key});

  @override
  State<AnimatedPathDemo> createState() => _AnimatedPathDemoState();
}

class _AnimatedPathDemoState extends State<AnimatedPathDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  void _startAnimation() {
    _controller.stop();
    _controller.reset();
    _controller.repeat(
      period: Duration(seconds: bps),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ECG Line Paint'),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: CustomPaint(
              painter: AnimationPathPainter(_controller),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}
