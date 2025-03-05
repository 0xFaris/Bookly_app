import 'package:flutter/material.dart';

class CustomCircularprogressindicator extends StatelessWidget {
  const CustomCircularprogressindicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
    ));
  }
}
