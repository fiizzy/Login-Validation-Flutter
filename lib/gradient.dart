import 'package:flutter/material.dart';

var gradient = BoxDecoration(
  gradient: SweepGradient(colors: [
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.teal
  ], stops: [
    0.8,
    0.96,
    0.74,
    0.22,
    0.85
  ], startAngle: 0.5, endAngle: 1),
);
