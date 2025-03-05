import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/features_custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              const FeatureCustomListView(),
              SizedBox(
                height: 51,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      width: 3,
                      height: 20,
                      color: Colors.yellowAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Best Sellers",
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
            ],
          ),
        ),
        NewestBooksListView()
      ],
    );
  }
}
