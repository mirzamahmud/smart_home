import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class Custom_Button extends StatelessWidget {
  Custom_Button({
    super.key,required this.text,required this.backgroundColor,required this.foregroundColor,required this.onTap,this.icon,this.size
  });
  String text;
  Color backgroundColor , foregroundColor;
  VoidCallback onTap;

  IconData ?icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          foregroundColor:  foregroundColor,
          backgroundColor: backgroundColor,
          side:  BorderSide(
            color: backgroundColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style: midWhiteBold,),
            Icon(icon,size: size),
          ],
        ),
      ),
    );
  }
}