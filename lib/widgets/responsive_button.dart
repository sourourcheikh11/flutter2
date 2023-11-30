import 'package:flutter/cupertino.dart';
import 'package:projet1/pages/misc/colors.dart';

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
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
       child: Row(
         mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset("img/b1.png")),

        ],
      ),
    );
  }
}
