import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatefulWidget {
  final double size;
  final List<Color> colors;
  const LoadingWidget({required this.colors, required this.size, super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.size,
        width: widget.size,
        child: Platform.isAndroid
            ? LoadingIndicator(
                indicatorType: Indicator.ballPulse,
                colors: widget.colors,
                strokeWidth: 4,
                backgroundColor: Colors.transparent,
                pathBackgroundColor: Colors.black,
              )
            : LoadingIndicator(
                indicatorType: Indicator.ballPulse,
                colors: widget.colors,
                strokeWidth: 4,
                backgroundColor: Colors.black,
                pathBackgroundColor: Colors.black,
              ));
  }
}
