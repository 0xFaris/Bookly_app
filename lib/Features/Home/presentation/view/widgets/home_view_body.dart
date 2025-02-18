import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/features_custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        const FeatureCustomListView(),
      ],
    );
  }
}
