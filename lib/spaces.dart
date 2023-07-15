import 'package:flutter/material.dart';

abstract class SizedBoxComponent {
  sizedBoxComponent();

  static const Widget horizontalSpaceS20 = SizedBox(width: 20);

  static const Widget verticalSpaceS10 = SizedBox(height: 10);
  static const Widget verticalSpaceS20 = SizedBox(height: 20);
  static const Widget verticalSpaceS30 = SizedBox(height: 30);
}