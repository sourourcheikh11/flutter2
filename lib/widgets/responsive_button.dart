import 'package:flutter/cupertino.dart';

class ResponsiveButton extends StatefulWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key?key , this.width,this.isResponsive=false}):super(key:key);

  @override
  State<ResponsiveButton> createState() => _ResponsiveButtonState();
}

class _ResponsiveButtonState extends State<ResponsiveButton> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 60,
      child: Row(
        children: [
          Image.asset("img/b1.png")
        ],
      ),
    );
  }
}
