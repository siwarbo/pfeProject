import 'package:flutter/material.dart';
import 'package:forkify/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color; // Make color nullable
  final String? text; // Make text nullable
  double? size; // Make size nullable
  TextOverflow? overflow; // Make overflow nullable

  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: Dimensions.font20 ,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
