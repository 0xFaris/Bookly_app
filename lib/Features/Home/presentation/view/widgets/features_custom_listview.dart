import 'package:bookly_app/Features/Home/presentation/view/widgets/feature_custom_item.dart';
import 'package:flutter/material.dart';

class FeatureCustomListView extends StatelessWidget {
  const FeatureCustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FeatureCustomItem();
        },
      ),
    );
  }
}
