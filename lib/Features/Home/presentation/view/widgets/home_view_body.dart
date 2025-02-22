import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/best_seller_list_view_items.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/features_custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          const FeatureCustomListView(),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
            child: Row(
              children: [
                VerticalDivider(
                  thickness: 3,
                  width: 20,
                  color: Colors.yellowAccent,
                ),
                Text(
                  "Best Sellers",
                  style: Styles.textStyle18,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
