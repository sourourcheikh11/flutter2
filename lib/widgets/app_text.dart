import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatefulWidget {
  double size;
  final String text;
  final Color color ;
  AppText({Key? key,
    this.size=16,
    required this.text,
    this.color=Colors.black54}):super(key:key);

  @override
  State<AppText> createState() => _AppLargeTextState();
}

class _AppLargeTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          color:widget.color,
          fontSize:widget.size,

      ),
    );
  }
}
