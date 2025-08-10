

import 'package:flutter/material.dart';
import 'package:signalhub/utilities/styleHelper.dart';
class Versiontext extends StatelessWidget {
  const Versiontext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Version 1.0.0",
      style: TextStyleHelper.of(context).s10RegTextStyle.copyWith(
        color: Colors.white
      ),

    );
  }
}
