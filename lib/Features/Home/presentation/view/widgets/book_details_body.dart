import 'package:bookly_app/Features/Home/Data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/similar_book_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
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
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SimilarBookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
