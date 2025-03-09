import 'dart:developer';

import 'package:bookly_app/Core/helper/custom_url_luncher.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/Data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/book_action.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail.toString(),
          ),
        ),
        SizedBox(
          height: 45,
        ),
        Text(
          bookModel.volumeInfo.title.toString(),
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0].toString(),
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: '0',
          ratingCount: '0',
        ),
        SizedBox(
          height: 37,
        ),
        BookAction(
          onTap: () async {
            await customlaunchUrl(
                context: context,
                url: bookModel.volumeInfo.previewLink.toString());
          },
        ),
      ],
    );
  }
}
