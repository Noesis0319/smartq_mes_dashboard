
import 'package:flutter/material.dart';

import '../../Content/Controller/StateController.dart';

const int _limit = 600;

class FlutterErrorViewCreator extends StatefulWidget {
  const FlutterErrorViewCreator({super.key, required this.details});

  final FlutterErrorDetails details;

  @override
  State createState() => FlutterErrorView();
}

/// ++ Web 인 경우 , 화면 다르게
///최대한 기본 클래스만 사용
class FlutterErrorView extends BaseState<FlutterErrorViewCreator> {
  final List<Offset> _points = [];
  double _count = 0;
  bool _showError = false;

  @override
  void initState() {
    _count = 0;
    _showError = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope( canPop: false,child:  GestureDetector(
      onPanStart: (details) {
        setState(() {
          _points.clear();
          _count = 0;
        });
      },
      onPanUpdate: (details) {
        setState(() {
          _points.add(details.localPosition);
          _count++;
          if (_count > _limit) {
            _showError = true;
          }
        });
      },
      onPanEnd: (details) {
        _points.clear();
        _count = 0;
      },
      child: Scaffold(
          body: CustomPaint(
            painter: PatternPainter(points: _points),
            size: Size.infinite,
            child: SafeArea(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: !_showError,
                          child: const Text(
                            "비정상 종료",
                            style: TextStyle(color: Colors.redAccent, fontSize: 18),
                          ),
                        ),
                        Visibility(
                          visible: !_showError,
                          child: const SizedBox(
                            height: 15,
                          ),
                        ),
                        Visibility(
                          visible: !_showError,
                          child: const Text("일시적인 오류가 발생하였습니다"),
                        ),
                        Visibility(
                          visible: _showError,
                          child: Text(
                            widget.details.exception.toString(),
                            style: const TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Visibility(
                          visible: _showError,
                          child: const SizedBox(
                            height: 15,
                          ),
                        ),
                        Visibility(
                          visible: _showError,
                          child: Text(
                            widget.details.stack.toString(),
                            style: const TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      ],
                    ),
                  ),),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        // Menu.introAuth.pushNamedAndRemoveUntil(context: context);
                      },
                      style: ButtonStyle(
                          backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.redAccent,
                          ),
                          shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))),
                      child: const Text(
                        "앱 재실행",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            )),)),
    ));
  }
}

class PatternPainter extends CustomPainter {
  final List<Offset> points;

  PatternPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.transparent
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0;

    for (int i = 0; i < points.length - 1; i++) {
      canvas.drawLine(points[i], points[i + 1], paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
