import 'package:flutter/material.dart';
import 'package:signalhub/utilities/styleHelper.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key, 
    required this.text,
    this.onPressed,
  });
  
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Color(0xff31006E),
          Color(0xff5D05CC),
          Color(0xff31006E),
        ]),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                text,
                style: TextStyleHelper.of(context).s16SemiBoldTextStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
