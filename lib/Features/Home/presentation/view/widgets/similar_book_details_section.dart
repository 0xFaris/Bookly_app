import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/Data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBookDetailsSection extends StatelessWidget {
  const SimilarBookDetailsSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          textAlign: TextAlign.start,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SimilarBookListView(),
      ],
    );
  }
}
