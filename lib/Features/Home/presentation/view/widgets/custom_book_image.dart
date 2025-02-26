import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2.4 / 3.5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
            image: DecorationImage(
              image: AssetImage(AssetsData.testBanner),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
