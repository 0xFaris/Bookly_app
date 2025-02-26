import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/book_action.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.2),
              child: CustomBookImage(),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(
              height: 57,
            ),
            BookAction(),
          ],
        ),
      ),
    );
  }
}
