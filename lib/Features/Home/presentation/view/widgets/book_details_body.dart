import 'package:bookly_app/Features/Home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/similar_book_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBookDetailsSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
