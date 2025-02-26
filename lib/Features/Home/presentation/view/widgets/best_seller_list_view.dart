import 'package:bookly_app/Features/Home/presentation/view/widgets/best_seller_list_view_items.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 30,
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: BestSellerListViewItem(),
        ),
      ),
    );
  }
}
