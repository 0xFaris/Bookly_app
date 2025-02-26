import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text("4.8",
            style: Styles.textStyle16.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          width: 5,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
