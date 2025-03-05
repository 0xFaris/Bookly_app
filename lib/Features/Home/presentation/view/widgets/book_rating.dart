import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.ratingCount,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final String ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Text(rating,
            style: Styles.textStyle16.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            "( $ratingCount )",
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        )
      ],
    );
  }
}
