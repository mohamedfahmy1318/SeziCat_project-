import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final double minWidth;
  final double height;

  const AppButton({
    required this.onPressed,
    required this.child,
    required this.height,
    required this.minWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: minWidth,
      height: height,
      splashColor: Colors.transparent,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(14),
      ),
      color: HexColor('#7541EE'),
      child: child,
    );
  }
}
